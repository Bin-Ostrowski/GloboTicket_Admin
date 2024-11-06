; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [340 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [674 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 253
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 290
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 8: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 303
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 195
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 272
	i32 113429830, ; 14: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 333
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 272
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 298
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 227
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 274
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 332
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 333
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 225
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 247
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 230
	i32 266337479, ; 37: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 289
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 249
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 246
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 304
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 293579439, ; 43: ExoPlayer.Dash.dll => 0x117faaaf => 201
	i32 298918909, ; 44: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 216
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 317
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 248
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 316
	i32 357576608, ; 50: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 304
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 336
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 328
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 231
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 244
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 452127346, ; 65: ExoPlayer.Database.dll => 0x1af2ea72 => 202
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 69: System.dll => 0x1bff388e => 164
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 246
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 259
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 315
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 309
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 188
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 77: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 312
	i32 527452488, ; 78: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 298
	i32 530272170, ; 79: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 80: Microsoft.Extensions.Logging => 0x20216150 => 184
	i32 540030774, ; 81: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 82: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 83: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 84: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 85: Jsr305Binding => 0x213954e7 => 285
	i32 569601784, ; 86: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 283
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 88: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 323
	i32 597488923, ; 89: CommunityToolkit.Maui => 0x239cf51b => 173
	i32 601371474, ; 90: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 91: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 92: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 626887733, ; 93: ExoPlayer.Container => 0x255d8c35 => 199
	i32 627609679, ; 94: Xamarin.AndroidX.CustomView => 0x2568904f => 236
	i32 639843206, ; 95: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 242
	i32 643868501, ; 96: System.Net => 0x2660a755 => 81
	i32 662205335, ; 97: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 98: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 279
	i32 666292255, ; 99: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 223
	i32 672442732, ; 100: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 101: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 102: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 303
	i32 690569205, ; 103: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 104: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 300
	i32 693804605, ; 105: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 106: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 107: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 295
	i32 700358131, ; 108: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 109: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 318
	i32 709557578, ; 110: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 306
	i32 720511267, ; 111: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 299
	i32 722857257, ; 112: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 113: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 114: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 115: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 213
	i32 759454413, ; 116: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 117: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 118: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 187
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 237
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 251
	i32 812693636, ; 123: ExoPlayer.Dash => 0x3070b884 => 201
	i32 823281589, ; 124: System.Private.Uri.dll => 0x311247b5 => 86
	i32 824676255, ; 125: CommunityToolkit.Maui.Maps.dll => 0x31278f9f => 175
	i32 830298997, ; 126: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 127: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 128: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 129: Xamarin.AndroidX.Print => 0x3246f6cd => 265
	i32 870878177, ; 130: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 302
	i32 873119928, ; 131: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 132: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 133: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 134: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 908888060, ; 135: Microsoft.Maui.Maps => 0x362c87fc => 196
	i32 911108515, ; 136: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 915551335, ; 137: ExoPlayer.Ext.MediaSession => 0x36923467 => 207
	i32 926902833, ; 138: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 330
	i32 928116545, ; 139: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 290
	i32 939704684, ; 140: ExoPlayer.Extractor => 0x3802c16c => 205
	i32 952186615, ; 141: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 142: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 299
	i32 966729478, ; 143: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 286
	i32 967690846, ; 144: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 248
	i32 975236339, ; 145: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 146: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 147: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 148: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 149: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 150: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 334
	i32 994442037, ; 151: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 152: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 308
	i32 1001831731, ; 153: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 154: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 269
	i32 1019214401, ; 155: System.Drawing => 0x3cbffa41 => 36
	i32 1028013380, ; 156: ExoPlayer.UI.dll => 0x3d463d44 => 211
	i32 1028951442, ; 157: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 183
	i32 1029334545, ; 158: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 305
	i32 1031528504, ; 159: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 287
	i32 1035644815, ; 160: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 221
	i32 1036536393, ; 161: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 162: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 163: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 255
	i32 1067306892, ; 164: GoogleGson => 0x3f9dcf8c => 179
	i32 1082857460, ; 165: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 166: Xamarin.Kotlin.StdLib => 0x409e66d8 => 296
	i32 1098259244, ; 167: System => 0x41761b2c => 164
	i32 1121599056, ; 168: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 254
	i32 1127624469, ; 169: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 186
	i32 1149092582, ; 170: Xamarin.AndroidX.Window => 0x447dc2e6 => 282
	i32 1151313727, ; 171: ExoPlayer.Rtsp => 0x449fa73f => 208
	i32 1170634674, ; 172: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 173: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 278
	i32 1178241025, ; 174: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 263
	i32 1178797549, ; 175: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 309
	i32 1203215381, ; 176: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 322
	i32 1204270330, ; 177: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 223
	i32 1208641965, ; 178: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 179: CommunityToolkit.Mvvm => 0x4868cc7b => 178
	i32 1219128291, ; 180: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 181: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 320
	i32 1243150071, ; 182: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 283
	i32 1253011324, ; 183: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1263886435, ; 184: Xamarin.Google.Guava.dll => 0x4b556063 => 288
	i32 1264511973, ; 185: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 273
	i32 1267360935, ; 186: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 277
	i32 1273260888, ; 187: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 228
	i32 1275534314, ; 188: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 300
	i32 1278448581, ; 189: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 220
	i32 1293217323, ; 190: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 239
	i32 1309188875, ; 191: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1309209905, ; 192: ExoPlayer.DataSource => 0x4e08f531 => 203
	i32 1322716291, ; 193: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 282
	i32 1324164729, ; 194: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 195: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 196: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 197: Xamarin.AndroidX.SavedState => 0x52114ed3 => 269
	i32 1379779777, ; 198: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1395857551, ; 199: Xamarin.AndroidX.Media.dll => 0x5333188f => 260
	i32 1402170036, ; 200: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 201: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 232
	i32 1406299041, ; 202: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 289
	i32 1408764838, ; 203: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 204: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 205: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 206: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 207: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 286
	i32 1439761251, ; 208: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 209: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 210: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 211: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 212: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 213: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 214: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 215: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 216: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 222
	i32 1470490898, ; 217: Microsoft.Extensions.Primitives => 0x57a5e912 => 188
	i32 1479771757, ; 218: System.Collections.Immutable => 0x5833866d => 9
	i32 1480156764, ; 219: ExoPlayer.DataSource.dll => 0x5839665c => 203
	i32 1480492111, ; 220: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 221: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 222: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 270
	i32 1493001747, ; 223: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 312
	i32 1514721132, ; 224: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 307
	i32 1536373174, ; 225: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 226: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 227: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 228: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 229: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 327
	i32 1554762148, ; 230: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 310
	i32 1565862583, ; 231: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 232: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 233: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 234: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 235: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 328
	i32 1582372066, ; 236: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 238
	i32 1591080825, ; 237: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 335
	i32 1592978981, ; 238: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 239: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 287
	i32 1601112923, ; 240: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 241: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 242: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 243: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 258
	i32 1622358360, ; 244: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 245: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 281
	i32 1634654947, ; 246: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 174
	i32 1635184631, ; 247: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 242
	i32 1636350590, ; 248: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 235
	i32 1638652436, ; 249: CommunityToolkit.Maui.MediaElement => 0x61abda14 => 177
	i32 1639515021, ; 250: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 251: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 252: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 253: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 254: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 275
	i32 1658251792, ; 255: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 284
	i32 1670060433, ; 256: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 230
	i32 1675553242, ; 257: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 258: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 259: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 260: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 261: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 262: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 263: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 297
	i32 1700397376, ; 264: ExoPlayer.Transformer => 0x655a0140 => 210
	i32 1701541528, ; 265: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 266: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 251
	i32 1726116996, ; 267: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 268: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 269: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 226
	i32 1736233607, ; 270: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 325
	i32 1744735666, ; 271: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 272: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 273: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 274: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 275: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765620304, ; 276: ExoPlayer.Core => 0x693d3a50 => 200
	i32 1765942094, ; 277: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 278: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 274
	i32 1770582343, ; 279: Microsoft.Extensions.Logging.dll => 0x6988f147 => 184
	i32 1776026572, ; 280: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 281: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 282: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 283: Xamarin.AndroidX.Fragment => 0x6a96652d => 244
	i32 1808609942, ; 284: Xamarin.AndroidX.Loader => 0x6bcd3296 => 258
	i32 1809966115, ; 285: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 320
	i32 1813058853, ; 286: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 296
	i32 1813201214, ; 287: Xamarin.Google.Android.Material => 0x6c13413e => 284
	i32 1818569960, ; 288: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 264
	i32 1818787751, ; 289: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 290: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 314
	i32 1824175904, ; 291: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 292: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 293: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 185
	i32 1842015223, ; 294: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 331
	i32 1847515442, ; 295: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 213
	i32 1858542181, ; 296: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 297: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 298: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 299: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 224
	i32 1888955245, ; 300: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 301: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 302: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 303: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1908813208, ; 304: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 292
	i32 1910275211, ; 305: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1926145099, ; 306: ExoPlayer.Container.dll => 0x72cea44b => 199
	i32 1939592360, ; 307: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 308: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 309: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 317
	i32 1961813231, ; 310: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 271
	i32 1968388702, ; 311: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 180
	i32 1983156543, ; 312: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 297
	i32 1984283898, ; 313: ExoPlayer.Ext.MediaSession.dll => 0x7645c4fa => 207
	i32 1985761444, ; 314: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 215
	i32 2011961780, ; 315: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 316: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 313
	i32 2019465201, ; 317: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 255
	i32 2025202353, ; 318: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 302
	i32 2031763787, ; 319: Xamarin.Android.Glide => 0x791a414b => 212
	i32 2043674646, ; 320: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 316
	i32 2045470958, ; 321: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 322: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 250
	i32 2057861558, ; 323: CommunityToolkit.Maui.Markup => 0x7aa879b6 => 176
	i32 2060060697, ; 324: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 325: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 326: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 327: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2106312818, ; 328: ExoPlayer.Decoder => 0x7d8bc872 => 204
	i32 2113912252, ; 329: ExoPlayer.UI => 0x7dffbdbc => 211
	i32 2127167465, ; 330: System.Console => 0x7ec9ffe9 => 20
	i32 2129483829, ; 331: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 291
	i32 2142473426, ; 332: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 333: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 334: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 335: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 318
	i32 2159891885, ; 336: Microsoft.Maui => 0x80bd55ad => 193
	i32 2165051842, ; 337: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 325
	i32 2181898931, ; 338: Microsoft.Extensions.Options.dll => 0x820d22b3 => 187
	i32 2192057212, ; 339: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 185
	i32 2193016926, ; 340: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 341: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 301
	i32 2201231467, ; 342: System.Net.Http => 0x8334206b => 64
	i32 2202964214, ; 343: ExoPlayer.dll => 0x834e90f6 => 197
	i32 2217644978, ; 344: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 278
	i32 2222056684, ; 345: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2239138732, ; 346: ExoPlayer.SmoothStreaming => 0x85768bac => 209
	i32 2244775296, ; 347: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 259
	i32 2252106437, ; 348: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 349: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2264333781, ; 350: GloboTicke_Admin3.dll => 0x86f6fdd5 => 0
	i32 2265110946, ; 351: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 352: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 181
	i32 2267999099, ; 353: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 214
	i32 2270573516, ; 354: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 310
	i32 2279755925, ; 355: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 267
	i32 2289298199, ; 356: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 329
	i32 2293034957, ; 357: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 358: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 359: System.Net.Mail => 0x88ffe49e => 66
	i32 2303073227, ; 360: Microsoft.Maui.Controls.Maps.dll => 0x89461bcb => 191
	i32 2305521784, ; 361: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 362: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 218
	i32 2320631194, ; 363: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 364: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 365: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 366: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 367: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 368: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 330
	i32 2371007202, ; 369: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 180
	i32 2378619854, ; 370: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 371: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 372: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 373: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 241
	i32 2421380589, ; 374: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 375: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 321
	i32 2423080555, ; 376: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 228
	i32 2435356389, ; 377: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 378: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2437192331, ; 379: CommunityToolkit.Maui.MediaElement.dll => 0x91449a8b => 177
	i32 2454642406, ; 380: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 381: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 382: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 383: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 231
	i32 2471841756, ; 384: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 385: Java.Interop.dll => 0x93918882 => 168
	i32 2476233210, ; 386: ExoPlayer => 0x939851fa => 197
	i32 2480646305, ; 387: Microsoft.Maui.Controls => 0x93dba8a1 => 190
	i32 2483903535, ; 388: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 389: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 390: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 391: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 392: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 253
	i32 2515854816, ; 393: ExoPlayer.Common => 0x95f4e5e0 => 198
	i32 2520433370, ; 394: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 327
	i32 2522472828, ; 395: Xamarin.Android.Glide.dll => 0x9659e17c => 212
	i32 2538310050, ; 396: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 397: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 398: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 399: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 254
	i32 2581819634, ; 400: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 277
	i32 2585220780, ; 401: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 402: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 403: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2603089728, ; 404: GloboTicke_Admin3 => 0x9b27ff40 => 0
	i32 2605712449, ; 405: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 301
	i32 2615233544, ; 406: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 245
	i32 2616218305, ; 407: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 186
	i32 2617129537, ; 408: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 409: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 410: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 235
	i32 2624644809, ; 411: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 240
	i32 2626028643, ; 412: ExoPlayer.Rtsp.dll => 0x9c860463 => 208
	i32 2627185994, ; 413: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 414: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 415: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 249
	i32 2663391936, ; 416: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 214
	i32 2663698177, ; 417: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 418: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 419: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 420: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 421: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 422: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 423: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 275
	i32 2713040075, ; 424: ExoPlayer.Hls => 0xa1b5b4cb => 206
	i32 2715334215, ; 425: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 426: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 427: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 428: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 429: Xamarin.AndroidX.Activity => 0xa2e0939b => 216
	i32 2735172069, ; 430: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 431: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 222
	i32 2740948882, ; 432: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 433: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 434: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 192
	i32 2764765095, ; 435: Microsoft.Maui.dll => 0xa4caf7a7 => 193
	i32 2765824710, ; 436: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 437: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 295
	i32 2778768386, ; 438: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 280
	i32 2779977773, ; 439: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 268
	i32 2788224221, ; 440: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 245
	i32 2796087574, ; 441: ExoPlayer.Extractor.dll => 0xa6a8e916 => 205
	i32 2801831435, ; 442: Microsoft.Maui.Graphics => 0xa7008e0b => 195
	i32 2802068195, ; 443: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 331
	i32 2803228030, ; 444: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 445: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 308
	i32 2810250172, ; 446: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 232
	i32 2819470561, ; 447: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 448: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 449: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 268
	i32 2824502124, ; 450: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 451: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 321
	i32 2838993487, ; 452: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 256
	i32 2847418871, ; 453: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 291
	i32 2849599387, ; 454: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 455: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 280
	i32 2855708567, ; 456: Xamarin.AndroidX.Transition => 0xaa36a797 => 276
	i32 2857259519, ; 457: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 307
	i32 2861098320, ; 458: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 459: Microsoft.Maui.Essentials => 0xaa8a4878 => 194
	i32 2868488919, ; 460: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 174
	i32 2870099610, ; 461: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 217
	i32 2875164099, ; 462: Jsr305Binding.dll => 0xab5f85c3 => 285
	i32 2875220617, ; 463: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 464: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 326
	i32 2884993177, ; 465: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 243
	i32 2887636118, ; 466: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 467: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 468: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 469: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 470: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 471: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 472: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 281
	i32 2919462931, ; 473: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 474: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 219
	i32 2936416060, ; 475: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 476: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 477: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 478: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2960379616, ; 479: Xamarin.Google.Guava => 0xb073cee0 => 288
	i32 2968338931, ; 480: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 481: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 482: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 239
	i32 2987532451, ; 483: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 271
	i32 2996846495, ; 484: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 252
	i32 3016983068, ; 485: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 273
	i32 3017076677, ; 486: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 293
	i32 3023353419, ; 487: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 488: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 247
	i32 3027462113, ; 489: ExoPlayer.Common.dll => 0xb47367e1 => 198
	i32 3038032645, ; 490: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 336
	i32 3056245963, ; 491: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 270
	i32 3057625584, ; 492: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 261
	i32 3058099980, ; 493: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 294
	i32 3059408633, ; 494: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 495: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 496: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 497: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 314
	i32 3090735792, ; 498: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 499: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 500: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 501: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 502: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 503: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 504: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3144327419, ; 505: ExoPlayer.Hls.dll => 0xbb6aa0fb => 206
	i32 3147165239, ; 506: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 507: GoogleGson.dll => 0xbba64c02 => 179
	i32 3159123045, ; 508: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 509: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 510: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 262
	i32 3190271366, ; 511: ExoPlayer.Decoder.dll => 0xbe27ad86 => 204
	i32 3192346100, ; 512: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 513: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 514: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 515: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 516: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 238
	i32 3220365878, ; 517: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 518: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3230466174, ; 519: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 292
	i32 3251039220, ; 520: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 521: Xamarin.AndroidX.CardView => 0xc235e84d => 226
	i32 3265493905, ; 522: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 523: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 524: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 525: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 526: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 527: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 528: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 529: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 530: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 531: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 236
	i32 3317144872, ; 532: System.Data => 0xc5b79d28 => 24
	i32 3329734229, ; 533: ExoPlayer.Database => 0xc677b655 => 202
	i32 3340431453, ; 534: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 224
	i32 3345895724, ; 535: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 266
	i32 3346324047, ; 536: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 263
	i32 3358260929, ; 537: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 538: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 217
	i32 3362522851, ; 539: Xamarin.AndroidX.Core => 0xc86c06e3 => 233
	i32 3366347497, ; 540: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 541: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 267
	i32 3395150330, ; 542: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3396979385, ; 543: ExoPlayer.Transformer.dll => 0xca79cab9 => 210
	i32 3402775237, ; 544: CommunityToolkit.Maui.Markup.dll => 0xcad23ac5 => 176
	i32 3403906625, ; 545: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 546: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 237
	i32 3428513518, ; 547: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 182
	i32 3429136800, ; 548: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 549: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 550: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 240
	i32 3445260447, ; 551: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 552: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 189
	i32 3463511458, ; 553: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 313
	i32 3471940407, ; 554: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 555: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 556: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 326
	i32 3485117614, ; 557: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 558: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 559: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 229
	i32 3500773090, ; 560: Microsoft.Maui.Controls.Maps => 0xd0a98ee2 => 191
	i32 3509114376, ; 561: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 562: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 563: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 564: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 565: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 332
	i32 3560100363, ; 566: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 567: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3596930546, ; 568: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 306
	i32 3597029428, ; 569: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 215
	i32 3598340787, ; 570: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 571: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 572: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 305
	i32 3624195450, ; 573: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 574: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 265
	i32 3633644679, ; 575: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 219
	i32 3638274909, ; 576: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 577: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 250
	i32 3643854240, ; 578: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 262
	i32 3645089577, ; 579: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 580: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 323
	i32 3657292374, ; 581: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 181
	i32 3660523487, ; 582: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 583: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 311
	i32 3672681054, ; 584: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 585: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 225
	i32 3684561358, ; 586: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 229
	i32 3686075795, ; 587: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 319
	i32 3697841164, ; 588: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 335
	i32 3700866549, ; 589: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 590: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 234
	i32 3716563718, ; 591: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 592: Xamarin.AndroidX.Annotation => 0xdda814c6 => 218
	i32 3724971120, ; 593: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 261
	i32 3732100267, ; 594: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 595: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 596: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 597: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 598: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 227
	i32 3792276235, ; 599: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 600: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 189
	i32 3802395368, ; 601: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 602: CommunityToolkit.Maui.dll => 0xe3886bf7 => 173
	i32 3819260425, ; 603: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822602673, ; 604: Xamarin.AndroidX.Media => 0xe3d849b1 => 260
	i32 3823082795, ; 605: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 606: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 607: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 183
	i32 3844307129, ; 608: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 609: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 610: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 611: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 612: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 613: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 614: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 276
	i32 3888767677, ; 615: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 266
	i32 3889960447, ; 616: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 334
	i32 3896106733, ; 617: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 618: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 233
	i32 3901907137, ; 619: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 620: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 621: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 279
	i32 3928044579, ; 622: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 623: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 624: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 264
	i32 3945713374, ; 625: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 626: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 627: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 221
	i32 3959773229, ; 628: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 252
	i32 3970018735, ; 629: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 294
	i32 3980434154, ; 630: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 329
	i32 3987592930, ; 631: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 311
	i32 3997428342, ; 632: CommunityToolkit.Maui.Maps => 0xee43ea76 => 175
	i32 4003436829, ; 633: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 634: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 220
	i32 4025784931, ; 635: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 636: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 192
	i32 4054681211, ; 637: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 638: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 639: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 315
	i32 4073602200, ; 640: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 641: Microsoft.Maui.Essentials.dll => 0xf40add04 => 194
	i32 4099507663, ; 642: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 643: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 644: Xamarin.AndroidX.Emoji2 => 0xf479582c => 241
	i32 4102112229, ; 645: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 324
	i32 4119206479, ; 646: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 322
	i32 4125707920, ; 647: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 319
	i32 4126470640, ; 648: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 182
	i32 4127667938, ; 649: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 650: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 651: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 652: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 653: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 654: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 655: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4173364138, ; 656: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 209
	i32 4181436372, ; 657: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 658: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 257
	i32 4185676441, ; 659: System.Security => 0xf97c5a99 => 130
	i32 4190597220, ; 660: ExoPlayer.Core.dll => 0xf9c77064 => 200
	i32 4190991637, ; 661: Microsoft.Maui.Maps.dll => 0xf9cd7515 => 196
	i32 4196529839, ; 662: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 663: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 664: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 324
	i32 4256097574, ; 665: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 234
	i32 4258378803, ; 666: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 256
	i32 4260525087, ; 667: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 668: Microsoft.Maui.Controls.dll => 0xfea12dee => 190
	i32 4274623895, ; 669: CommunityToolkit.Mvvm.dll => 0xfec99597 => 178
	i32 4274976490, ; 670: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4278134329, ; 671: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 293
	i32 4292120959, ; 672: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 257
	i32 4294763496 ; 673: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 243
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [674 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 253, ; 3
	i32 290, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 303, ; 8
	i32 30, ; 9
	i32 124, ; 10
	i32 195, ; 11
	i32 102, ; 12
	i32 272, ; 13
	i32 333, ; 14
	i32 107, ; 15
	i32 272, ; 16
	i32 139, ; 17
	i32 298, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 227, ; 22
	i32 132, ; 23
	i32 274, ; 24
	i32 151, ; 25
	i32 332, ; 26
	i32 333, ; 27
	i32 18, ; 28
	i32 225, ; 29
	i32 26, ; 30
	i32 247, ; 31
	i32 1, ; 32
	i32 59, ; 33
	i32 42, ; 34
	i32 91, ; 35
	i32 230, ; 36
	i32 289, ; 37
	i32 147, ; 38
	i32 249, ; 39
	i32 246, ; 40
	i32 304, ; 41
	i32 54, ; 42
	i32 201, ; 43
	i32 69, ; 44
	i32 216, ; 45
	i32 83, ; 46
	i32 317, ; 47
	i32 248, ; 48
	i32 316, ; 49
	i32 304, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 336, ; 58
	i32 165, ; 59
	i32 328, ; 60
	i32 231, ; 61
	i32 12, ; 62
	i32 244, ; 63
	i32 125, ; 64
	i32 202, ; 65
	i32 152, ; 66
	i32 113, ; 67
	i32 166, ; 68
	i32 164, ; 69
	i32 246, ; 70
	i32 259, ; 71
	i32 84, ; 72
	i32 315, ; 73
	i32 309, ; 74
	i32 188, ; 75
	i32 150, ; 76
	i32 312, ; 77
	i32 298, ; 78
	i32 60, ; 79
	i32 184, ; 80
	i32 51, ; 81
	i32 103, ; 82
	i32 114, ; 83
	i32 40, ; 84
	i32 285, ; 85
	i32 283, ; 86
	i32 120, ; 87
	i32 323, ; 88
	i32 173, ; 89
	i32 52, ; 90
	i32 44, ; 91
	i32 119, ; 92
	i32 199, ; 93
	i32 236, ; 94
	i32 242, ; 95
	i32 81, ; 96
	i32 136, ; 97
	i32 279, ; 98
	i32 223, ; 99
	i32 8, ; 100
	i32 73, ; 101
	i32 303, ; 102
	i32 155, ; 103
	i32 300, ; 104
	i32 154, ; 105
	i32 92, ; 106
	i32 295, ; 107
	i32 45, ; 108
	i32 318, ; 109
	i32 306, ; 110
	i32 299, ; 111
	i32 109, ; 112
	i32 129, ; 113
	i32 25, ; 114
	i32 213, ; 115
	i32 72, ; 116
	i32 55, ; 117
	i32 46, ; 118
	i32 187, ; 119
	i32 237, ; 120
	i32 22, ; 121
	i32 251, ; 122
	i32 201, ; 123
	i32 86, ; 124
	i32 175, ; 125
	i32 43, ; 126
	i32 160, ; 127
	i32 71, ; 128
	i32 265, ; 129
	i32 302, ; 130
	i32 3, ; 131
	i32 42, ; 132
	i32 63, ; 133
	i32 16, ; 134
	i32 196, ; 135
	i32 53, ; 136
	i32 207, ; 137
	i32 330, ; 138
	i32 290, ; 139
	i32 205, ; 140
	i32 105, ; 141
	i32 299, ; 142
	i32 286, ; 143
	i32 248, ; 144
	i32 34, ; 145
	i32 158, ; 146
	i32 85, ; 147
	i32 32, ; 148
	i32 12, ; 149
	i32 334, ; 150
	i32 51, ; 151
	i32 308, ; 152
	i32 56, ; 153
	i32 269, ; 154
	i32 36, ; 155
	i32 211, ; 156
	i32 183, ; 157
	i32 305, ; 158
	i32 287, ; 159
	i32 221, ; 160
	i32 35, ; 161
	i32 58, ; 162
	i32 255, ; 163
	i32 179, ; 164
	i32 17, ; 165
	i32 296, ; 166
	i32 164, ; 167
	i32 254, ; 168
	i32 186, ; 169
	i32 282, ; 170
	i32 208, ; 171
	i32 153, ; 172
	i32 278, ; 173
	i32 263, ; 174
	i32 309, ; 175
	i32 322, ; 176
	i32 223, ; 177
	i32 29, ; 178
	i32 178, ; 179
	i32 52, ; 180
	i32 320, ; 181
	i32 283, ; 182
	i32 5, ; 183
	i32 288, ; 184
	i32 273, ; 185
	i32 277, ; 186
	i32 228, ; 187
	i32 300, ; 188
	i32 220, ; 189
	i32 239, ; 190
	i32 85, ; 191
	i32 203, ; 192
	i32 282, ; 193
	i32 61, ; 194
	i32 112, ; 195
	i32 57, ; 196
	i32 269, ; 197
	i32 99, ; 198
	i32 260, ; 199
	i32 19, ; 200
	i32 232, ; 201
	i32 289, ; 202
	i32 111, ; 203
	i32 101, ; 204
	i32 102, ; 205
	i32 104, ; 206
	i32 286, ; 207
	i32 71, ; 208
	i32 38, ; 209
	i32 32, ; 210
	i32 103, ; 211
	i32 73, ; 212
	i32 9, ; 213
	i32 123, ; 214
	i32 46, ; 215
	i32 222, ; 216
	i32 188, ; 217
	i32 9, ; 218
	i32 203, ; 219
	i32 43, ; 220
	i32 4, ; 221
	i32 270, ; 222
	i32 312, ; 223
	i32 307, ; 224
	i32 31, ; 225
	i32 138, ; 226
	i32 92, ; 227
	i32 93, ; 228
	i32 327, ; 229
	i32 310, ; 230
	i32 49, ; 231
	i32 141, ; 232
	i32 112, ; 233
	i32 140, ; 234
	i32 328, ; 235
	i32 238, ; 236
	i32 335, ; 237
	i32 115, ; 238
	i32 287, ; 239
	i32 157, ; 240
	i32 76, ; 241
	i32 79, ; 242
	i32 258, ; 243
	i32 37, ; 244
	i32 281, ; 245
	i32 174, ; 246
	i32 242, ; 247
	i32 235, ; 248
	i32 177, ; 249
	i32 64, ; 250
	i32 138, ; 251
	i32 15, ; 252
	i32 116, ; 253
	i32 275, ; 254
	i32 284, ; 255
	i32 230, ; 256
	i32 48, ; 257
	i32 70, ; 258
	i32 80, ; 259
	i32 126, ; 260
	i32 94, ; 261
	i32 121, ; 262
	i32 297, ; 263
	i32 210, ; 264
	i32 26, ; 265
	i32 251, ; 266
	i32 97, ; 267
	i32 28, ; 268
	i32 226, ; 269
	i32 325, ; 270
	i32 149, ; 271
	i32 169, ; 272
	i32 4, ; 273
	i32 98, ; 274
	i32 33, ; 275
	i32 200, ; 276
	i32 93, ; 277
	i32 274, ; 278
	i32 184, ; 279
	i32 21, ; 280
	i32 41, ; 281
	i32 170, ; 282
	i32 244, ; 283
	i32 258, ; 284
	i32 320, ; 285
	i32 296, ; 286
	i32 284, ; 287
	i32 264, ; 288
	i32 2, ; 289
	i32 314, ; 290
	i32 134, ; 291
	i32 111, ; 292
	i32 185, ; 293
	i32 331, ; 294
	i32 213, ; 295
	i32 58, ; 296
	i32 95, ; 297
	i32 39, ; 298
	i32 224, ; 299
	i32 25, ; 300
	i32 94, ; 301
	i32 89, ; 302
	i32 99, ; 303
	i32 292, ; 304
	i32 10, ; 305
	i32 199, ; 306
	i32 87, ; 307
	i32 100, ; 308
	i32 317, ; 309
	i32 271, ; 310
	i32 180, ; 311
	i32 297, ; 312
	i32 207, ; 313
	i32 215, ; 314
	i32 7, ; 315
	i32 313, ; 316
	i32 255, ; 317
	i32 302, ; 318
	i32 212, ; 319
	i32 316, ; 320
	i32 88, ; 321
	i32 250, ; 322
	i32 176, ; 323
	i32 154, ; 324
	i32 33, ; 325
	i32 116, ; 326
	i32 82, ; 327
	i32 204, ; 328
	i32 211, ; 329
	i32 20, ; 330
	i32 291, ; 331
	i32 11, ; 332
	i32 162, ; 333
	i32 3, ; 334
	i32 318, ; 335
	i32 193, ; 336
	i32 325, ; 337
	i32 187, ; 338
	i32 185, ; 339
	i32 84, ; 340
	i32 301, ; 341
	i32 64, ; 342
	i32 197, ; 343
	i32 278, ; 344
	i32 143, ; 345
	i32 209, ; 346
	i32 259, ; 347
	i32 157, ; 348
	i32 41, ; 349
	i32 0, ; 350
	i32 117, ; 351
	i32 181, ; 352
	i32 214, ; 353
	i32 310, ; 354
	i32 267, ; 355
	i32 329, ; 356
	i32 131, ; 357
	i32 75, ; 358
	i32 66, ; 359
	i32 191, ; 360
	i32 172, ; 361
	i32 218, ; 362
	i32 143, ; 363
	i32 106, ; 364
	i32 151, ; 365
	i32 70, ; 366
	i32 156, ; 367
	i32 330, ; 368
	i32 180, ; 369
	i32 121, ; 370
	i32 127, ; 371
	i32 152, ; 372
	i32 241, ; 373
	i32 141, ; 374
	i32 321, ; 375
	i32 228, ; 376
	i32 20, ; 377
	i32 14, ; 378
	i32 177, ; 379
	i32 135, ; 380
	i32 75, ; 381
	i32 59, ; 382
	i32 231, ; 383
	i32 167, ; 384
	i32 168, ; 385
	i32 197, ; 386
	i32 190, ; 387
	i32 15, ; 388
	i32 74, ; 389
	i32 6, ; 390
	i32 23, ; 391
	i32 253, ; 392
	i32 198, ; 393
	i32 327, ; 394
	i32 212, ; 395
	i32 91, ; 396
	i32 1, ; 397
	i32 136, ; 398
	i32 254, ; 399
	i32 277, ; 400
	i32 134, ; 401
	i32 69, ; 402
	i32 146, ; 403
	i32 0, ; 404
	i32 301, ; 405
	i32 245, ; 406
	i32 186, ; 407
	i32 88, ; 408
	i32 96, ; 409
	i32 235, ; 410
	i32 240, ; 411
	i32 208, ; 412
	i32 31, ; 413
	i32 45, ; 414
	i32 249, ; 415
	i32 214, ; 416
	i32 109, ; 417
	i32 158, ; 418
	i32 35, ; 419
	i32 22, ; 420
	i32 114, ; 421
	i32 57, ; 422
	i32 275, ; 423
	i32 206, ; 424
	i32 144, ; 425
	i32 118, ; 426
	i32 120, ; 427
	i32 110, ; 428
	i32 216, ; 429
	i32 139, ; 430
	i32 222, ; 431
	i32 54, ; 432
	i32 105, ; 433
	i32 192, ; 434
	i32 193, ; 435
	i32 133, ; 436
	i32 295, ; 437
	i32 280, ; 438
	i32 268, ; 439
	i32 245, ; 440
	i32 205, ; 441
	i32 195, ; 442
	i32 331, ; 443
	i32 159, ; 444
	i32 308, ; 445
	i32 232, ; 446
	i32 163, ; 447
	i32 132, ; 448
	i32 268, ; 449
	i32 161, ; 450
	i32 321, ; 451
	i32 256, ; 452
	i32 291, ; 453
	i32 140, ; 454
	i32 280, ; 455
	i32 276, ; 456
	i32 307, ; 457
	i32 169, ; 458
	i32 194, ; 459
	i32 174, ; 460
	i32 217, ; 461
	i32 285, ; 462
	i32 40, ; 463
	i32 326, ; 464
	i32 243, ; 465
	i32 81, ; 466
	i32 56, ; 467
	i32 37, ; 468
	i32 97, ; 469
	i32 166, ; 470
	i32 172, ; 471
	i32 281, ; 472
	i32 82, ; 473
	i32 219, ; 474
	i32 98, ; 475
	i32 30, ; 476
	i32 159, ; 477
	i32 18, ; 478
	i32 288, ; 479
	i32 127, ; 480
	i32 119, ; 481
	i32 239, ; 482
	i32 271, ; 483
	i32 252, ; 484
	i32 273, ; 485
	i32 293, ; 486
	i32 165, ; 487
	i32 247, ; 488
	i32 198, ; 489
	i32 336, ; 490
	i32 270, ; 491
	i32 261, ; 492
	i32 294, ; 493
	i32 170, ; 494
	i32 16, ; 495
	i32 144, ; 496
	i32 314, ; 497
	i32 125, ; 498
	i32 118, ; 499
	i32 38, ; 500
	i32 115, ; 501
	i32 47, ; 502
	i32 142, ; 503
	i32 117, ; 504
	i32 206, ; 505
	i32 34, ; 506
	i32 179, ; 507
	i32 95, ; 508
	i32 53, ; 509
	i32 262, ; 510
	i32 204, ; 511
	i32 129, ; 512
	i32 153, ; 513
	i32 24, ; 514
	i32 161, ; 515
	i32 238, ; 516
	i32 148, ; 517
	i32 104, ; 518
	i32 292, ; 519
	i32 89, ; 520
	i32 226, ; 521
	i32 60, ; 522
	i32 142, ; 523
	i32 100, ; 524
	i32 5, ; 525
	i32 13, ; 526
	i32 122, ; 527
	i32 135, ; 528
	i32 28, ; 529
	i32 72, ; 530
	i32 236, ; 531
	i32 24, ; 532
	i32 202, ; 533
	i32 224, ; 534
	i32 266, ; 535
	i32 263, ; 536
	i32 137, ; 537
	i32 217, ; 538
	i32 233, ; 539
	i32 168, ; 540
	i32 267, ; 541
	i32 101, ; 542
	i32 210, ; 543
	i32 176, ; 544
	i32 123, ; 545
	i32 237, ; 546
	i32 182, ; 547
	i32 163, ; 548
	i32 167, ; 549
	i32 240, ; 550
	i32 39, ; 551
	i32 189, ; 552
	i32 313, ; 553
	i32 17, ; 554
	i32 171, ; 555
	i32 326, ; 556
	i32 137, ; 557
	i32 150, ; 558
	i32 229, ; 559
	i32 191, ; 560
	i32 155, ; 561
	i32 130, ; 562
	i32 19, ; 563
	i32 65, ; 564
	i32 332, ; 565
	i32 147, ; 566
	i32 47, ; 567
	i32 306, ; 568
	i32 215, ; 569
	i32 79, ; 570
	i32 61, ; 571
	i32 305, ; 572
	i32 106, ; 573
	i32 265, ; 574
	i32 219, ; 575
	i32 49, ; 576
	i32 250, ; 577
	i32 262, ; 578
	i32 14, ; 579
	i32 323, ; 580
	i32 181, ; 581
	i32 68, ; 582
	i32 311, ; 583
	i32 171, ; 584
	i32 225, ; 585
	i32 229, ; 586
	i32 319, ; 587
	i32 335, ; 588
	i32 78, ; 589
	i32 234, ; 590
	i32 108, ; 591
	i32 218, ; 592
	i32 261, ; 593
	i32 67, ; 594
	i32 63, ; 595
	i32 27, ; 596
	i32 160, ; 597
	i32 227, ; 598
	i32 10, ; 599
	i32 189, ; 600
	i32 11, ; 601
	i32 173, ; 602
	i32 78, ; 603
	i32 260, ; 604
	i32 126, ; 605
	i32 83, ; 606
	i32 183, ; 607
	i32 66, ; 608
	i32 107, ; 609
	i32 65, ; 610
	i32 128, ; 611
	i32 122, ; 612
	i32 77, ; 613
	i32 276, ; 614
	i32 266, ; 615
	i32 334, ; 616
	i32 8, ; 617
	i32 233, ; 618
	i32 2, ; 619
	i32 44, ; 620
	i32 279, ; 621
	i32 156, ; 622
	i32 128, ; 623
	i32 264, ; 624
	i32 23, ; 625
	i32 133, ; 626
	i32 221, ; 627
	i32 252, ; 628
	i32 294, ; 629
	i32 329, ; 630
	i32 311, ; 631
	i32 175, ; 632
	i32 29, ; 633
	i32 220, ; 634
	i32 62, ; 635
	i32 192, ; 636
	i32 90, ; 637
	i32 87, ; 638
	i32 315, ; 639
	i32 148, ; 640
	i32 194, ; 641
	i32 36, ; 642
	i32 86, ; 643
	i32 241, ; 644
	i32 324, ; 645
	i32 322, ; 646
	i32 319, ; 647
	i32 182, ; 648
	i32 50, ; 649
	i32 6, ; 650
	i32 90, ; 651
	i32 21, ; 652
	i32 162, ; 653
	i32 96, ; 654
	i32 50, ; 655
	i32 209, ; 656
	i32 113, ; 657
	i32 257, ; 658
	i32 130, ; 659
	i32 200, ; 660
	i32 196, ; 661
	i32 76, ; 662
	i32 27, ; 663
	i32 324, ; 664
	i32 234, ; 665
	i32 256, ; 666
	i32 7, ; 667
	i32 190, ; 668
	i32 178, ; 669
	i32 110, ; 670
	i32 293, ; 671
	i32 257, ; 672
	i32 243 ; 673
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 45bb7f365f1587a7786d5bbbf0daec075d5aabea"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
