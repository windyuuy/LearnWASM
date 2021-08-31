// 加载外部程序集
.assembly extern mscorlib
// 指定编译目标程序集
.assembly HelloIL

.class Program extends [mscorlib]System.Object
{
	.method public instanct void .ctor() cil managed
	{
		.maxstack 8
		// 将当前实例的引用入栈
		ldarg.0
		// 调用基类构造函数
		// call 用于调用静态方法, callvirt 用于调用实例方法
		call instance void [mscorlib]System.Object::.ctor()
		// 执行完毕，返回
		ret
	}

	.method static void Main() cil managed
	{
		// 表明程序入口点
		.entrypoint
		.maxstack 8
		// 装载string对象
		ldstr "Hello World!"
		// 调用静态方法WriteLine
		call void [mscorlib]System.Console::WriteLine(string)
		// 执行完毕，返回
		ret
	}
}
