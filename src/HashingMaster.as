package 
{
	/**
	 * ...
	 * @author ...
	 */
	public class HashingMaster 
	{
		import flash.utils.ByteArray;
		
		public function HashingMaster() 
		{
			
		}
		
		public static function niceHash(param1:String) : String
		{
			return byteArrayToString(hash(param1));
		}
		
				// Convert byte array into string
		public static function byteArrayToString(param1:ByteArray, param2:Boolean = false) : String
			  {
				 var _loc3_:* = "";
				 var _loc4_:uint = 0;
				 while(_loc4_ < param1.length)
				 {
					_loc3_ = _loc3_ + ("0" + param1[_loc4_].toString(16)).substr(-2,2);
					if(param2)
					{
					   if(_loc4_ < param1.length - 1)
					   {
						  _loc3_ = _loc3_ + ":";
					   }
					}
					_loc4_++;
				 }
				 return _loc3_;
			  }


		// HASHING FUNCTION, IMPORTANT
			public static function hash(param1:String, param2:String = null) : ByteArray
			{
			 if(!param2)
			 {
				param2 = prepare1("89,114,56,196,166,138,205,189,192,150,195,189,199,184,129,149,163,144,128");
			 }

			 var _loc3_:hmac_hasher = new hmac_hasher(new Sha256_hasher());
			 var _loc4_:ByteArray = _loc3_.someMethod123(writeBytes(param2),writeBytes(param1));
			 return _loc4_;
			}
			
			public static function writeBytes(param1:String) : ByteArray
			  {
				 var _loc2_:ByteArray = new ByteArray();
				 _loc2_.writeUTFBytes(param1);
				 return _loc2_;
			  }
			
			public static function prepare1(param1:String) : String
				{
					var _loc3_:String = null;
					 var _loc2_:Array = param1.split(",");
					 var _loc4_:int = 0;
					 while(_loc4_ < 3)
					 {
						_loc2_.shift();
						_loc4_++;
					 }
					 _loc4_ = 0;
					 while(_loc4_ < _loc2_.length)
					 {
						_loc2_[_loc4_] = String.fromCharCode(_loc2_[_loc4_] - (90 - _loc4_));
						_loc4_++;
					 }
					 _loc3_ = _loc2_.join("");
					 return _loc3_;
				}
		
	}

}