#!/usr/bin/python
from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re
import uuid


app = Flask(__name__)


app.secret_key = 'your secret key'


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'autonomous_mobile_cabinet'


mysql = MySQL(app)


@app.route('/')
@app.route('/login', methods =['GET', 'POST'])
def login():
	msg = ''
	if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
		username = request.form['username']
		password = request.form['password']
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM accounts WHERE username = % s AND password = % s', (username, password, ))
		account = cursor.fetchone()
		if account:
			session['loggedin'] = True
			session['id'] = account['id']
			session['username'] = account['username']
			msg = 'Logged in successfully !'
			return render_template('index.html', msg = msg)
		else:
			msg = 'Incorrect username / password !'
	return render_template('login.html', msg = msg)

@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('id', None)
    session.pop('username', None)
    return redirect(url_for('login'))

@app.route('/register', methods =['GET', 'POST'])
def register():
	msg = ''
	if request.method == 'POST' and 'username' in request.form and 'password' in request.form and 'email' in request.form and 'address' in request.form and 'city' in request.form and 'country' in request.form and 'postalcode' in request.form and 'organisation' in request.form and 'PIN' in request.form:
		username = request.form['username']
		password = request.form['password']
		email = request.form['email']
		organisation = request.form['organisation']
		address = request.form['address']
		city = request.form['city']
		state = request.form['state']
		country = request.form['country']
		postalcode = request.form['postalcode']
		PIN = request.form['PIN']
		
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM accounts WHERE username = % s', (username, ))
		account = cursor.fetchone()
		if account:
			msg = 'Account already exists !'
		elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
			msg = 'Invalid email address !'
		elif not re.match(r'[A-Za-z0-9]+', username):
			msg = 'name must contain only characters and numbers !'
		else:
			cursor.execute('INSERT INTO accounts VALUES (NULL, % s, % s, % s, % s, % s, % s, % s, % s, % s, %s)', (username, password, email, organisation, address, city, state, country, postalcode, PIN, ))
			mysql.connection.commit()
			msg = 'You have successfully registered !'
	elif request.method == 'POST':
		msg = 'Please fill out the form !'
	return render_template('register.html', msg = msg)


@app.route("/index")
def index():
	if 'loggedin' in session:
		return render_template("index.html")
	return redirect(url_for('login'))


@app.route("/display")
def display():
	if 'loggedin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM accounts WHERE id = % s', (session['id'], ))
		account = cursor.fetchone()
		return render_template("display.html", account = account)
	return redirect(url_for('login'))

@app.route("/buka",  methods =['GET', 'POST'])
def buka():
	if 'loggedin' in session:
		id_dokumen = session.get('id_dokumen', None)
		
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM list_dokumen WHERE id_dokumen = % s', (id_dokumen, ))
		list_dokumen = cursor.fetchone()
		if request.method == 'POST' and 'pin_pintu' in request.form:
			pin_pintu = request.form['pin_pintu']
			id_user = session['id']
			cursor.execute('SELECT PIN FROM accounts WHERE id = % s', (id_user, ))
			if (cursor.fetchone()['PIN'] == int(pin_pintu)):
				id = uuid.uuid1().hex
				id = id[0:10]
				session['id_trans'] = id
				cursor.execute('INSERT INTO data_trans SET id_dokumen =% s, id_user=% s', (id_dokumen, id_user))
				cursor.execute('UPDATE door_locks SET status_pintu=% s WHERE device_ke= %s AND rak_ke= %s', (1, list_dokumen['device_ke'], list_dokumen['rak_ke']))
				mysql.connection.commit()
				return redirect(url_for('tutup'))
			else :
				msg = '*Pin yang anda masukkan salah'
				return render_template("buka.html", msg = msg, list_dokumen = list_dokumen)
		return render_template("buka.html", list_dokumen = list_dokumen)
	return redirect(url_for('login'))

@app.route("/tutup", methods = ['GET', 'POST'])
def tutup():
	if 'loggedin' in session:
		id_dokumen = session.get('id_dokumen', None)
		
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM list_dokumen WHERE id_dokumen = % s', (id_dokumen, ))
		list_dokumen = cursor.fetchone()
		if request.method == 'POST':
			cursor.execute("SELECT id_transaksi FROM data_trans order by id_transaksi desc LIMIT 1")
			data1 = cursor.fetchone()
			cursor.execute('UPDATE data_trans SET status_dev1 =% s, status_dev2=% s, status_dev3 =% s WHERE id_transaksi=%s' , (1,1,1, data1['id_transaksi']))
			cursor.execute('UPDATE door_locks SET status_pintu=% s WHERE device_ke= %s AND rak_ke= %s', (0, list_dokumen['device_ke'], list_dokumen['rak_ke']))
			mysql.connection.commit()
			session.pop('id_dokumen', None)
			session.pop('id_trans', None)
			return redirect(url_for('search'))
		return render_template("tutup.html", list_dokumen = list_dokumen, msg = "Silahkan tunggu cabinet melakukan permintaan")
	return redirect(url_for('login'))

@app.route("/update", methods =['GET', 'POST'])
def update():
	msg = ''
	if 'loggedin' in session:
		if request.method == 'POST' and 'username' in request.form and 'password' in request.form and 'email' in request.form and 'address' in request.form and 'city' in request.form and 'country' in request.form and 'postalcode' in request.form and 'organisation' in request.form:
			username = request.form['username']
			password = request.form['password']
			email = request.form['email']
			organisation = request.form['organisation']
			address = request.form['address']
			city = request.form['city']
			state = request.form['state']
			country = request.form['country']
			postalcode = request.form['postalcode']
			cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
			cursor.execute('SELECT * FROM accounts WHERE username = % s', (username, ))
			account = cursor.fetchone()
			if account:
				msg = 'Account already exists !'
			elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
				msg = 'Invalid email address !'
			elif not re.match(r'[A-Za-z0-9]+', username):
				msg = 'name must contain only characters and numbers !'
			else:
				cursor.execute('UPDATE accounts SET username =% s, password =% s, email =% s, organisation =% s, address =% s, city =% s, state =% s, country =% s, postalcode =% s WHERE id =% s', (username, password, email, organisation, address, city, state, country, postalcode, (session['id'], ), ))
				mysql.connection.commit()
				msg = 'You have successfully updated !'
		elif request.method == 'POST':
			msg = 'Please fill out the form !'
		return render_template("update.html", msg = msg)
	return redirect(url_for('login'))

@app.route("/search", methods =['GET', 'POST'])
def search():
	msg = ''
	if 'loggedin' in session:
		if request.method == 'POST' and 'nama_dokumen' in request.form:
			try:
				nama_dokumen = request.form['nama_dokumen']
				cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
				cursor.execute('SELECT id_dokumen FROM list_dokumen WHERE nama_dokumen = % s', (nama_dokumen, ))
				id_dokumen = cursor.fetchone()['id_dokumen']
				mysql.connection.commit()
				session['id_dokumen'] = id_dokumen
				return redirect(url_for('buka'))
			except:
				session['msg'] = "*Dokumen yang Anda Cari Tidak Ada, Silahkan Tambahkan Data Terlebih Dahulu"
				return redirect(url_for('store'))
		return render_template("search.html", msg = msg)
	return redirect(url_for('login'))

@app.route("/store", methods =['GET', 'POST'])
def store():
	msg = ''
	if 'loggedin' in session:
		msg = session.get('msg', None)
		if (msg == None):
			msg = ''
		session.pop('msg', None)
		if request.method == 'POST' and 'nama_dokumen' in request.form and 'device_ke' in request.form and 'rak_ke' in request.form and 'baris_ke' in request.form and 'kolom_ke' in request.form:
			nama_dokumen = request.form['nama_dokumen']
			device_ke = request.form['device_ke']
			rak_ke = request.form['rak_ke']
			baris_ke = request.form['baris_ke']
			kolom_ke = request.form['kolom_ke']
			
			id = uuid.uuid1().hex
			print ()
			cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
			
			cursor.execute('SELECT * FROM list_dokumen WHERE nama_dokumen = % s', (nama_dokumen, ))
			account = cursor.fetchone()
			if account:
				msg = 'Nama Dokumen sudah ada !'
				print (msg)
				return render_template("store.html", msg = msg)
				
			elif not re.match(r'[A-Za-z0-9]+', nama_dokumen):
				msg = 'Nama dokumen hanya boleh terdiri dari huruf and angka !'
				print (msg)
				return render_template("store.html", msg = msg)
			else :
				x = cursor.execute('INSERT INTO list_dokumen VALUES (% s, % s, % s, % s, % s, % s)', (id[:9], nama_dokumen, device_ke, rak_ke, baris_ke, kolom_ke, ))
				
				mysql.connection.commit()
				print (x)
				
				if x:
					msg = 'Document data is sucesfully registered !'
					print (msg)
					return render_template("store.html", msg = msg)
				else :
					msg = 'Document registration error !'
					print (msg)
					return render_template("store.html", msg = msg)
		elif request.method == 'POST':
			msg = 'Please fill out the form  !'
			print (msg)
			return render_template("store.html", msg = msg)
		
		print (msg)
		return render_template("store.html", msg = msg)

@app.route("/read_dev1")
def read_dev1():
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(
        "SELECT id_transaksi, id_dokumen, status_dev1 FROM data_trans order by id_transaksi desc LIMIT 1")
    data1 = cursor.fetchone()

    cursor.execute(
        'SELECT device_ke, rak_ke, baris_ke, kolom_ke FROM list_dokumen WHERE id_dokumen = % s', (data1['id_dokumen'], ))
    data2 = cursor.fetchone()
    cursor.execute('SELECT status_pintu FROM door_locks WHERE device_ke = % s AND rak_ke = %s',
                   (data2['device_ke'], data2['rak_ke'], ))
    data3 = cursor.fetchone()

    data_kirim = "*" + str(data1['status_dev1']) + "," + str(data2['device_ke']) + "," + str(data2['rak_ke']) + "," + str(data2['baris_ke']) + "," + str(data2['kolom_ke']) + "," + str(data3['status_pintu']) + "#"

    return data_kirim


@app.route("/read_dev2")
def read_dev2():
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(
        "SELECT id_transaksi, id_dokumen, status_dev2 FROM data_trans order by id_transaksi desc LIMIT 1")
    data1 = cursor.fetchone()

    cursor.execute(
        'SELECT device_ke, rak_ke, baris_ke, kolom_ke FROM list_dokumen WHERE id_dokumen = % s', (data1['id_dokumen'], ))
    data2 = cursor.fetchone()
    cursor.execute('SELECT status_pintu FROM door_locks WHERE device_ke = % s AND rak_ke = %s',
                   (data2['device_ke'], data2['rak_ke'], ))
    data3 = cursor.fetchone()
    
    data_kirim = "*" + str(data1['status_dev2']) + "," + str(data2['device_ke']) + "," + str(data2['rak_ke']) + "," + str(data2['baris_ke']) + "," + str(data2['kolom_ke']) + "," + str(data3['status_pintu']) + "#"
    return data_kirim


@app.route("/read_dev3")
def read_dev3():
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(
        "SELECT id_transaksi, id_dokumen, status_dev3 FROM data_trans order by id_transaksi desc LIMIT 1")
    data1 = cursor.fetchone()

    cursor.execute(
        'SELECT device_ke, rak_ke, baris_ke, kolom_ke FROM list_dokumen WHERE id_dokumen = % s', (data1['id_dokumen'], ))
    data2 = cursor.fetchone()
    cursor.execute('SELECT status_pintu FROM door_locks WHERE device_ke = % s AND rak_ke = %s',
                   (data2['device_ke'], data2['rak_ke'], ))
    data3 = cursor.fetchone()
    
    data_kirim = "*" + str(data1['status_dev3']) + "," + str(data2['device_ke']) + "," + str(data2['rak_ke']) + "," + str(data2['baris_ke']) + "," + str(data2['kolom_ke']) + "," + str(data3['status_pintu']) + "#"
    return data_kirim


if __name__ == "__main__":
	# app.run(host ="localhost", port = int("5000"))
	app.run(host ="0.0.0.0", debug = True, port = int("5000"))
