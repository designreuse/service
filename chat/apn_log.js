var log4js = require('log4js');
log4js.configure({
  appenders: [
    { type: 'console' },{
      type: 'dateFile',  
      filename: 'logs/apn.log',  
      pattern: "_yyyy-MM-dd",  
      maxLogSize: 1024,  
      alwaysIncludePattern: false,  
      backups: 4
    }
  ],
  replaceConsole: false
});

exports.logger=function(name){
  var logger = log4js.getLogger(name);
  logger.setLevel('INFO');
  return logger;
}
