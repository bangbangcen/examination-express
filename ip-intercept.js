const rateLimit = require('express-rate-limit');
let blackList = {};

// ip拦截配置,同一ip一秒内只允许发送7次请求
const limiter = rateLimit({
	windowMs: 3000,
	max: 15,
  handler: (req, res) => {
    blackList[req.ip] = Date.now();
    res.status(429);
    res.send({ message: "您的请求过于频繁，账户冻结3分钟。" });
  }
});

function ipIntercept(req, res, next) {
  const ip = req.ip;
  if (blackList[ip]) {
    const wait = parseInt((blackList[ip] + 3 * 60 * 1000 - Date.now()) / 1000);
    if (wait > 0) {
      res.status(403);
      res.send({ message: `您的账户还需要${parseInt(wait / 60)}分${parseInt(wait % 60)}秒才能解冻。` });
    }
    else {
      delete blackList[ip];
    }    
  }
  next();
}

module.exports = {
  ipIntercept,
  limiter
};