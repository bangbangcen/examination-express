const jwt = require('jsonwebtoken');
const SECRET_KEY = "ajskdlfksj2jrk";
const DURATION = 5 * 60 * 60 * 1000;

function validateAuth(req, res, next) {
  if (req.url === '/login' || req.url === '/userLogin') {
    next();
  }
  else {
    let failed = false;
    const { token } = req.headers;
    console.log(token)
    if (token === "") {
      failed = true;
      res.status(401);
      res.send({ message: "非法请求" });
    }
    else {
      jwt.verify(token, SECRET_KEY, (err, data) => {
        if (err) {
          failed = true;
          res.status(401);
          res.send({ message: "认证失败，请重新登陆" });
        }
        else {
          const { id, roleId, time } = data;
          if (Date.now() > time + DURATION) {
            failed = true;
            res.status(401);
            res.send({ message: "认证期限已到，请重新登陆" });
          }
          else {
            req.body.id = id;
            req.body.roleId = roleId;
          }
        }
      });      
    }
    if (!failed) next();
  }
}

module.exports = {
  validateAuth
};