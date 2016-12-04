const express = require('express');
const router = express.Router();
const orm = require('orm');
var path = require('path');
const dbs = require('../data/dbs')(router);


router.get('/',function (req,res) {
	dbs.getIndexType(req,function (type) {
		res.render('index',{
			title:'欢迎登陆kane新闻',
			type:type
		})
	})
	
})

router.get('/admin',function (req,res) {
	dbs.getAdminList(req,function (list) {
		res.render('admin',{
			title:'欢迎登陆后台管理系统',
			data:list
		})	
	})	
})


router.get('/login',function {
		res.render('login',{
			title:'欢迎登陆'
		})
})




module.exports = router