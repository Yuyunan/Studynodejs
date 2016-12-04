const express = require('express');
const orm = require('orm');


const dbusername = "root";
const dbpassword = "111111";
const daname = "ynn";



module.exports = function(router) {

	// 数据库设置
	router.use(orm.express("mysql://root:111111@localhost/ynn", {
		define: function(db, models, next) {
			models.user = db.define("user", {
				user_id: {
					type: 'serial',
					key: true
				},
				user_username: String,
				user_password: String,
				user_useremail: String,
				registertime: String,
				status:Number
			});
			models.type = db.define("type", {
				type_id: {
					type: 'serial',
					key: true
				},
				type_title: String,
			});
			models.news = db.define("news", {
				news_id: {
					type: 'serial',
					key: true
				},
				news_type: String,
				news_title: String,
				news_img: String,
				news_time: String,
				news_tag: String,	
			});
			next();
		}
	}));
	const dbs = {

		// 查询数据库里面user这个表里面status等于1的所有用户的数据
		getUser: function(req, callback) {
			req.models.user.find({
				status: 0
			}, function(err, ynn) {
				if (err) throw err;
				callback(ynn)
			});
		},
		// 查询type表里面的数据
		getIndexType: function(req, callback) {
			req.models.type.find({
			}, function(err, type) {
				if (err) throw err;
				callback(type)
			});
		},
		getAdminList: function(req, callback) {
			req.models.news.find({
			}, function(err, list) {
				if (err) throw err;
				callback(list)
			});
		}
	}

	return dbs;
}







