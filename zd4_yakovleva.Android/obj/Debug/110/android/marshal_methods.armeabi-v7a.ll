; ModuleID = 'obj\Debug\110\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\110\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [152 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 39
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 63
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 58
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 49
	i32 120558881, ; 4: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 49
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 24
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 50
	i32 209399409, ; 7: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 22
	i32 230216969, ; 8: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 34
	i32 232815796, ; 9: System.Web.Services => 0xde07cb4 => 75
	i32 278686392, ; 10: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 38
	i32 280482487, ; 11: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 32
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 14
	i32 321597661, ; 13: System.Numerics => 0x132b30dd => 9
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 36
	i32 442521989, ; 15: Xamarin.Essentials => 0x1a605985 => 57
	i32 450948140, ; 16: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 31
	i32 465846621, ; 17: mscorlib => 0x1bc4415d => 6
	i32 469710990, ; 18: System.dll => 0x1bff388e => 8
	i32 476646585, ; 19: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 32
	i32 486930444, ; 20: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 43
	i32 526420162, ; 21: System.Transactions.dll => 0x1f6088c2 => 71
	i32 605376203, ; 22: System.IO.Compression.FileSystem => 0x24154ecb => 74
	i32 627609679, ; 23: Xamarin.AndroidX.CustomView => 0x2568904f => 28
	i32 663517072, ; 24: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 54
	i32 666292255, ; 25: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 19
	i32 690569205, ; 26: System.Xml.Linq.dll => 0x29293ff5 => 13
	i32 775507847, ; 27: System.IO.Compression => 0x2e394f87 => 73
	i32 809851609, ; 28: System.Drawing.Common.dll => 0x30455ad9 => 66
	i32 843511501, ; 29: Xamarin.AndroidX.Print => 0x3246f6cd => 46
	i32 928116545, ; 30: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 63
	i32 967690846, ; 31: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 36
	i32 974778368, ; 32: FormsViewGroup.dll => 0x3a19f000 => 3
	i32 1012816738, ; 33: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 48
	i32 1035644815, ; 34: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 18
	i32 1042160112, ; 35: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 60
	i32 1052210849, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 40
	i32 1098259244, ; 37: System => 0x41761b2c => 8
	i32 1175144683, ; 38: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 52
	i32 1204270330, ; 39: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 19
	i32 1267360935, ; 40: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 53
	i32 1293217323, ; 41: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 30
	i32 1365406463, ; 42: System.ServiceModel.Internals.dll => 0x516272ff => 65
	i32 1376866003, ; 43: Xamarin.AndroidX.SavedState => 0x52114ed3 => 48
	i32 1395857551, ; 44: Xamarin.AndroidX.Media.dll => 0x5333188f => 44
	i32 1406073936, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 25
	i32 1460219004, ; 46: Xamarin.Forms.Xaml => 0x57092c7c => 61
	i32 1462112819, ; 47: System.IO.Compression.dll => 0x57261233 => 73
	i32 1469204771, ; 48: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 17
	i32 1582372066, ; 49: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 29
	i32 1592978981, ; 50: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 51: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 42
	i32 1624863272, ; 52: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 56
	i32 1636350590, ; 53: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 27
	i32 1639515021, ; 54: System.Net.Http.dll => 0x61b9038d => 1
	i32 1657153582, ; 55: System.Runtime => 0x62c6282e => 11
	i32 1658251792, ; 56: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 62
	i32 1729485958, ; 57: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 23
	i32 1766324549, ; 58: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 50
	i32 1776026572, ; 59: System.Core.dll => 0x69dc03cc => 7
	i32 1788241197, ; 60: Xamarin.AndroidX.Fragment => 0x6a96652d => 31
	i32 1808609942, ; 61: Xamarin.AndroidX.Loader => 0x6bcd3296 => 42
	i32 1813201214, ; 62: Xamarin.Google.Android.Material => 0x6c13413e => 62
	i32 1867746548, ; 63: Xamarin.Essentials.dll => 0x6f538cf4 => 57
	i32 1878053835, ; 64: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 61
	i32 1885316902, ; 65: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 20
	i32 1919157823, ; 66: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 45
	i32 2019465201, ; 67: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 40
	i32 2055257422, ; 68: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 37
	i32 2079903147, ; 69: System.Runtime.dll => 0x7bf8cdab => 11
	i32 2090596640, ; 70: System.Numerics.Vectors => 0x7c9bf920 => 10
	i32 2097448633, ; 71: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 33
	i32 2126786730, ; 72: Xamarin.Forms.Platform.Android => 0x7ec430aa => 59
	i32 2201231467, ; 73: System.Net.Http => 0x8334206b => 1
	i32 2217644978, ; 74: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 52
	i32 2244775296, ; 75: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 43
	i32 2256548716, ; 76: Xamarin.AndroidX.MultiDex => 0x8680336c => 45
	i32 2261435625, ; 77: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 35
	i32 2279755925, ; 78: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 47
	i32 2315684594, ; 79: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 15
	i32 2471841756, ; 80: netstandard.dll => 0x93554fdc => 69
	i32 2475788418, ; 81: Java.Interop.dll => 0x93918882 => 4
	i32 2501346920, ; 82: System.Data.DataSetExtensions => 0x95178668 => 72
	i32 2505896520, ; 83: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 39
	i32 2581819634, ; 84: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 53
	i32 2613729443, ; 85: zd4_yakovleva.Android.dll => 0x9bca58a3 => 0
	i32 2620871830, ; 86: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 27
	i32 2633051222, ; 87: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 38
	i32 2732626843, ; 88: Xamarin.AndroidX.Activity => 0xa2e0939b => 14
	i32 2737747696, ; 89: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 17
	i32 2766581644, ; 90: Xamarin.Forms.Core => 0xa4e6af8c => 58
	i32 2778768386, ; 91: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 55
	i32 2810250172, ; 92: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 25
	i32 2819470561, ; 93: System.Xml.dll => 0xa80db4e1 => 12
	i32 2853208004, ; 94: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 55
	i32 2855708567, ; 95: Xamarin.AndroidX.Transition => 0xaa36a797 => 51
	i32 2857045102, ; 96: zd4_yakovleva => 0xaa4b0c6e => 64
	i32 2903344695, ; 97: System.ComponentModel.Composition => 0xad0d8637 => 68
	i32 2905242038, ; 98: mscorlib.dll => 0xad2a79b6 => 6
	i32 2916838712, ; 99: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 56
	i32 2919462931, ; 100: System.Numerics.Vectors.dll => 0xae037813 => 10
	i32 2921128767, ; 101: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 16
	i32 2978675010, ; 102: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 30
	i32 3024354802, ; 103: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 34
	i32 3044182254, ; 104: FormsViewGroup => 0xb57288ee => 3
	i32 3046314880, ; 105: zd4_yakovleva.dll => 0xb5931380 => 64
	i32 3111772706, ; 106: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3204380047, ; 107: System.Data.dll => 0xbefef58f => 70
	i32 3211777861, ; 108: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 29
	i32 3247949154, ; 109: Mono.Security => 0xc197c562 => 67
	i32 3258312781, ; 110: Xamarin.AndroidX.CardView => 0xc235e84d => 23
	i32 3267021929, ; 111: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 21
	i32 3317135071, ; 112: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 28
	i32 3317144872, ; 113: System.Data => 0xc5b79d28 => 70
	i32 3340431453, ; 114: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 20
	i32 3353484488, ; 115: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 33
	i32 3362522851, ; 116: Xamarin.AndroidX.Core => 0xc86c06e3 => 26
	i32 3366347497, ; 117: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 118: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 47
	i32 3404865022, ; 119: System.ServiceModel.Internals => 0xcaf21dfe => 65
	i32 3429136800, ; 120: System.Xml => 0xcc6479a0 => 12
	i32 3430777524, ; 121: netstandard => 0xcc7d82b4 => 69
	i32 3476120550, ; 122: Mono.Android => 0xcf3163e6 => 5
	i32 3486566296, ; 123: System.Transactions => 0xcfd0c798 => 71
	i32 3501239056, ; 124: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 21
	i32 3509114376, ; 125: System.Xml.Linq => 0xd128d608 => 13
	i32 3536029504, ; 126: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 59
	i32 3567349600, ; 127: System.ComponentModel.Composition.dll => 0xd4a16f60 => 68
	i32 3627220390, ; 128: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 46
	i32 3632359727, ; 129: Xamarin.Forms.Platform => 0xd881692f => 60
	i32 3633644679, ; 130: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 16
	i32 3641597786, ; 131: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 37
	i32 3672681054, ; 132: Mono.Android.dll => 0xdae8aa5e => 5
	i32 3676310014, ; 133: System.Web.Services.dll => 0xdb2009fe => 75
	i32 3682565725, ; 134: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 22
	i32 3689375977, ; 135: System.Drawing.Common => 0xdbe768e9 => 66
	i32 3718780102, ; 136: Xamarin.AndroidX.Annotation => 0xdda814c6 => 15
	i32 3758932259, ; 137: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 35
	i32 3786282454, ; 138: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 24
	i32 3822602673, ; 139: Xamarin.AndroidX.Media => 0xe3d849b1 => 44
	i32 3829621856, ; 140: System.Numerics.dll => 0xe4436460 => 9
	i32 3885922214, ; 141: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 51
	i32 3896760992, ; 142: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 26
	i32 3920810846, ; 143: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 74
	i32 3921031405, ; 144: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 54
	i32 3945713374, ; 145: System.Data.DataSetExtensions.dll => 0xeb2ecede => 72
	i32 3955647286, ; 146: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 18
	i32 4105002889, ; 147: Mono.Security.dll => 0xf4ad5f89 => 67
	i32 4151237749, ; 148: System.Core => 0xf76edc75 => 7
	i32 4182413190, ; 149: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 41
	i32 4224220994, ; 150: zd4_yakovleva.Android => 0xfbc87f42 => 0
	i32 4292120959 ; 151: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 41
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [152 x i32] [
	i32 39, i32 63, i32 58, i32 49, i32 49, i32 24, i32 50, i32 22, ; 0..7
	i32 34, i32 75, i32 38, i32 32, i32 14, i32 9, i32 36, i32 57, ; 8..15
	i32 31, i32 6, i32 8, i32 32, i32 43, i32 71, i32 74, i32 28, ; 16..23
	i32 54, i32 19, i32 13, i32 73, i32 66, i32 46, i32 63, i32 36, ; 24..31
	i32 3, i32 48, i32 18, i32 60, i32 40, i32 8, i32 52, i32 19, ; 32..39
	i32 53, i32 30, i32 65, i32 48, i32 44, i32 25, i32 61, i32 73, ; 40..47
	i32 17, i32 29, i32 2, i32 42, i32 56, i32 27, i32 1, i32 11, ; 48..55
	i32 62, i32 23, i32 50, i32 7, i32 31, i32 42, i32 62, i32 57, ; 56..63
	i32 61, i32 20, i32 45, i32 40, i32 37, i32 11, i32 10, i32 33, ; 64..71
	i32 59, i32 1, i32 52, i32 43, i32 45, i32 35, i32 47, i32 15, ; 72..79
	i32 69, i32 4, i32 72, i32 39, i32 53, i32 0, i32 27, i32 38, ; 80..87
	i32 14, i32 17, i32 58, i32 55, i32 25, i32 12, i32 55, i32 51, ; 88..95
	i32 64, i32 68, i32 6, i32 56, i32 10, i32 16, i32 30, i32 34, ; 96..103
	i32 3, i32 64, i32 2, i32 70, i32 29, i32 67, i32 23, i32 21, ; 104..111
	i32 28, i32 70, i32 20, i32 33, i32 26, i32 4, i32 47, i32 65, ; 112..119
	i32 12, i32 69, i32 5, i32 71, i32 21, i32 13, i32 59, i32 68, ; 120..127
	i32 46, i32 60, i32 16, i32 37, i32 5, i32 75, i32 22, i32 66, ; 128..135
	i32 15, i32 35, i32 24, i32 44, i32 9, i32 51, i32 26, i32 74, ; 136..143
	i32 54, i32 72, i32 18, i32 67, i32 7, i32 41, i32 0, i32 41 ; 152..151
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
