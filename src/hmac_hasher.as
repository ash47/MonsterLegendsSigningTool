package 
{
	import flash.utils.ByteArray;
   
   public class hmac_hasher
   {
       
      
      private var hash:interface_hasher;
      
      private var myVariable1:uint;
      
      public function hmac_hasher(param1:interface_hasher, param2:uint = 0)
      {
         super();
         this.hash = param1;
         this.myVariable1 = param2;
      }
      
      public function method2() : uint
      {
         if(this.myVariable1 != 0)
         {
            return this.myVariable1 / 8;
         }
         return this.hash.method2();
      }
      
      public function someMethod123(param1:ByteArray, param2:ByteArray) : ByteArray
      {
         var _loc3_:ByteArray = null;
         if(param1.length > this.hash.method1())
         {
            _loc3_ = this.hash.hash(param1);
         }
         else
         {
            _loc3_ = new ByteArray();
            _loc3_.writeBytes(param1);
         }
         while(_loc3_.length < this.hash.method1())
         {
            _loc3_[_loc3_.length] = 0;
         }
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:uint = 0;
         while(_loc6_ < _loc3_.length)
         {
            _loc4_[_loc6_] = _loc3_[_loc6_] ^ 54;
            _loc5_[_loc6_] = _loc3_[_loc6_] ^ 92;
            _loc6_++;
         }
         _loc4_.position = _loc3_.length;
         _loc4_.writeBytes(param2);
         var _loc7_:ByteArray = this.hash.hash(_loc4_);
         _loc5_.position = _loc3_.length;
         _loc5_.writeBytes(_loc7_);
         var _loc8_:ByteArray = this.hash.hash(_loc5_);
         if(this.myVariable1 > 0 && this.myVariable1 < 8 * _loc8_.length)
         {
            _loc8_.length = this.myVariable1 / 8;
         }
         return _loc8_;
      }
      
      public function dispose() : void
      {
         this.hash = null;
         this.myVariable1 = 0;
      }
      
      public function toString() : String
      {
         return "hmac-" + (this.myVariable1 > 0?this.myVariable1 + "-":"") + this.hash.toString();
      }
   }

}