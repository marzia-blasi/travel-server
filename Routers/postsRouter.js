// 1 import express

const express = require("express");

// 2 Object Router

const router = express.Router();

// 3 Controller

const postController = require("../Controllers/postController.js");

// 4 Index

router.get("/", postController.index);

// 5 Show

router.get("/:id", postController.show);

// 6 module for export

module.exports = router;
