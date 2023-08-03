.class public final Lcom/im/freechat/data/l;
.super Ljava/lang/Object;
.source "SyncRepositoryImpl.kt"

# interfaces
.implements Lcom/im/freechat/domain/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncRepositoryImpl.kt\ncom/im/freechat/data/SyncRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1027:1\n1549#2:1028\n1620#2,3:1029\n1208#2,2:1032\n1238#2,4:1034\n1603#2,9:1038\n1851#2:1047\n1852#2:1049\n1612#2:1050\n1360#2:1051\n1446#2,5:1052\n1549#2:1057\n1620#2,3:1058\n766#2:1061\n857#2,2:1062\n1851#2,2:1064\n766#2:1066\n857#2,2:1067\n766#2:1069\n857#2,2:1070\n1549#2:1072\n1620#2,3:1073\n766#2:1076\n857#2,2:1077\n1851#2:1079\n1549#2:1080\n1620#2,3:1081\n1549#2:1084\n1620#2,3:1085\n1852#2:1088\n1549#2:1090\n1620#2,3:1091\n1603#2,9:1094\n1851#2:1103\n1852#2:1105\n1612#2:1106\n1360#2:1107\n1446#2,5:1108\n1603#2,9:1113\n1851#2:1122\n1852#2:1124\n1612#2:1125\n1851#2,2:1126\n1549#2:1128\n1620#2,3:1129\n1655#2,8:1132\n1851#2,2:1140\n1603#2,9:1142\n1851#2:1151\n1852#2:1153\n1612#2:1154\n1549#2:1155\n1620#2,3:1156\n1851#2,2:1159\n1549#2:1161\n1620#2,3:1162\n1851#2,2:1165\n1603#2,9:1167\n1851#2:1176\n1852#2:1178\n1612#2:1179\n766#2:1180\n857#2,2:1181\n1549#2:1183\n1620#2,3:1184\n1549#2:1187\n1620#2,3:1188\n1549#2:1191\n1620#2,2:1192\n819#2:1194\n847#2,2:1195\n1622#2:1197\n1851#2,2:1198\n1549#2:1201\n1620#2,3:1202\n1549#2:1205\n1620#2,3:1206\n1549#2:1209\n1620#2,3:1210\n1549#2:1213\n1620#2,3:1214\n1#3:1048\n1#3:1089\n1#3:1104\n1#3:1123\n1#3:1152\n1#3:1177\n1#3:1200\n*S KotlinDebug\n*F\n+ 1 SyncRepositoryImpl.kt\ncom/im/freechat/data/SyncRepositoryImpl\n*L\n68#1:1028\n68#1:1029,3\n76#1:1032,2\n76#1:1034,4\n81#1:1038,9\n81#1:1047\n81#1:1049\n81#1:1050\n83#1:1051\n83#1:1052,5\n84#1:1057\n84#1:1058,3\n86#1:1061\n86#1:1062,2\n87#1:1064,2\n166#1:1066\n166#1:1067,2\n167#1:1069\n167#1:1070,2\n167#1:1072\n167#1:1073,3\n170#1:1076\n170#1:1077,2\n177#1:1079\n191#1:1080\n191#1:1081,3\n192#1:1084\n192#1:1085,3\n177#1:1088\n236#1:1090\n236#1:1091,3\n243#1:1094,9\n243#1:1103\n243#1:1105\n243#1:1106\n245#1:1107\n245#1:1108,5\n247#1:1113,9\n247#1:1122\n247#1:1124\n247#1:1125\n247#1:1126,2\n250#1:1128\n250#1:1129,3\n255#1:1132,8\n256#1:1140,2\n298#1:1142,9\n298#1:1151\n298#1:1153\n298#1:1154\n300#1:1155\n300#1:1156,3\n356#1:1159,2\n564#1:1161\n564#1:1162,3\n588#1:1165,2\n607#1:1167,9\n607#1:1176\n607#1:1178\n607#1:1179\n608#1:1180\n608#1:1181,2\n609#1:1183\n609#1:1184,3\n627#1:1187\n627#1:1188,3\n631#1:1191\n631#1:1192,2\n636#1:1194\n636#1:1195,2\n631#1:1197\n642#1:1198,2\n783#1:1201\n783#1:1202,3\n786#1:1205\n786#1:1206,3\n818#1:1209\n818#1:1210,3\n823#1:1213\n823#1:1214,3\n81#1:1048\n243#1:1104\n247#1:1123\n298#1:1152\n607#1:1177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008/\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001Bw\u0012\u0008\u0010\u00cf\u0001\u001a\u00030\u00ce\u0001\u0012\u0008\u0010\u0094\u0001\u001a\u00030\u0092\u0001\u0012\u0008\u0010\u0097\u0001\u001a\u00030\u0095\u0001\u0012\u0008\u0010\u009a\u0001\u001a\u00030\u0098\u0001\u0012\u0008\u0010\u009d\u0001\u001a\u00030\u009b\u0001\u0012\u0008\u0010\u00a0\u0001\u001a\u00030\u009e\u0001\u0012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a1\u0001\u0012\u0008\u0010\u00a6\u0001\u001a\u00030\u00a4\u0001\u0012\u0008\u0010\u00a9\u0001\u001a\u00030\u00a7\u0001\u0012\u0008\u0010\u00ac\u0001\u001a\u00030\u00aa\u0001\u0012\u0008\u0010\u00af\u0001\u001a\u00030\u00ad\u0001\u00a2\u0006\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001J#\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J)\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0015\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J#\u0010\u0017\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J#\u0010\u0018\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J)\u0010\u0019\u001a\u00020\u00142\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u000fJ+\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u001cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001b\u0010!\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u001fH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"J7\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00140$0#2\u0006\u0010\u0005\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&J#\u0010\'\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J#\u0010)\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010(J)\u0010,\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u00142\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-J#\u0010.\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010(J;\u00100\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0016\u0010/\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00140$H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u00101J\u000e\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001f02H\u0016J\u0010\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u001fH\u0016J\u0008\u00106\u001a\u00020\u001fH\u0016Ji\u0010>\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0008\u00108\u001a\u0004\u0018\u0001072\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002070\u000b2\u0008\u0010:\u001a\u0004\u0018\u00010\u00142\u0006\u0010;\u001a\u00020\u001f2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002070#2\u0006\u0010=\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010?Je\u0010A\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000b2\u0008\u00108\u001a\u0004\u0018\u0001072\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002070\u000b2\u0006\u0010;\u001a\u00020\u001f2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002070#H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010BJ1\u0010D\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000b2\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008D\u0010EJ+\u0010H\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u000207H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008H\u0010IJ+\u0010J\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u000207H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008J\u0010IJ+\u0010K\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u000207H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010IJ#\u0010M\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010L\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008M\u0010NJ#\u0010O\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u001cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008O\u0010PJ\u001b\u0010Q\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u001cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Q\u0010RJ\u001b\u0010S\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008S\u0010&JE\u0010W\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010T\u001a\u0002072\u0006\u0010U\u001a\u00020\u00042\u0006\u0010V\u001a\u00020\u00042\u0008\u0010:\u001a\u0004\u0018\u00010\u0014H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008W\u0010XJ#\u0010Z\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020\u0014H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Z\u0010[J\u0013\u0010\\\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\\\u0010]J%\u0010`\u001a\u00020\u00062\u0006\u0010^\u001a\u00020\u00042\u0008\u0010_\u001a\u0004\u0018\u000107H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008`\u0010aJ\u0013\u0010b\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008b\u0010]J#\u0010d\u001a\u00020\u00062\u0006\u0010^\u001a\u00020\u00042\u0006\u0010c\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008d\u0010NJ\u001b\u0010e\u001a\u00020\u00062\u0006\u0010^\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008e\u0010&J\u001b\u0010f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008f\u0010&J\u001b\u0010h\u001a\u00020g2\u0006\u0010\u0005\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008h\u0010&J\u0013\u0010i\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008i\u0010]J\u0013\u0010j\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008j\u0010]J\u001b\u0010k\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008k\u0010&J\u0013\u0010l\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008l\u0010]J1\u0010o\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010m\u001a\u0002072\u000c\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008o\u0010pJ#\u0010r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010q\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008r\u0010(J+\u0010t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010s\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008t\u0010uJ+\u0010x\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008x\u0010yJ+\u0010z\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008z\u0010yJ+\u0010{\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008{\u0010yJ+\u0010|\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008|\u0010yJ+\u0010}\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010w\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008}\u0010yJ#\u0010~\u001a\u00020\u00042\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008~\u0010(J-\u0010\u0080\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u007f\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0080\u0001\u0010uJ.\u0010\u0082\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0007\u0010\u0081\u0001\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0082\u0001\u0010uJ/\u0010\u0084\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0007\u0010\u0083\u0001\u001a\u000207H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0085\u0001J0\u0010\u0088\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0008\u0010\u0087\u0001\u001a\u00030\u0086\u0001H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J.\u0010\u008b\u0001\u001a\u00020\u00062\u0006\u0010v\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0007\u0010\u008a\u0001\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u008b\u0001\u0010uJ&\u0010\u008d\u0001\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0007\u0010\u008c\u0001\u001a\u000207H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u008d\u0001\u0010aJ&\u0010\u008f\u0001\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0007\u0010\u008e\u0001\u001a\u000207H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u008f\u0001\u0010aJ&\u0010\u0091\u0001\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0007\u0010\u0090\u0001\u001a\u000207H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0091\u0001\u0010aR\u0017\u0010\u0094\u0001\u001a\u00030\u0092\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008b\u0010\u0093\u0001R\u0017\u0010\u0097\u0001\u001a\u00030\u0095\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008i\u0010\u0096\u0001R\u0018\u0010\u009a\u0001\u001a\u00030\u0098\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0099\u0001R\u0017\u0010\u009d\u0001\u001a\u00030\u009b\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008~\u0010\u009c\u0001R\u0018\u0010\u00a0\u0001\u001a\u00030\u009e\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u009f\u0001R\u0017\u0010\u00a3\u0001\u001a\u00030\u00a1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008x\u0010\u00a2\u0001R\u0017\u0010\u00a6\u0001\u001a\u00030\u00a4\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\'\u0010\u00a5\u0001R\u0017\u0010\u00a9\u0001\u001a\u00030\u00a7\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00083\u0010\u00a8\u0001R\u0017\u0010\u00ac\u0001\u001a\u00030\u00aa\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008Q\u0010\u00ab\u0001R\u0017\u0010\u00af\u0001\u001a\u00030\u00ad\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008W\u0010\u00ae\u0001R\u0017\u0010\u00b2\u0001\u001a\u00030\u00b0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008K\u0010\u00b1\u0001R\u0017\u0010\u00b5\u0001\u001a\u00030\u00b3\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008O\u0010\u00b4\u0001R\u0017\u0010\u00b8\u0001\u001a\u00030\u00b6\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008z\u0010\u00b7\u0001R\u0017\u0010\u00bb\u0001\u001a\u00030\u00b9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00080\u0010\u00ba\u0001R\u0017\u0010\u00be\u0001\u001a\u00030\u00bc\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008Z\u0010\u00bd\u0001R\u0017\u0010\u00c1\u0001\u001a\u00030\u00bf\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008M\u0010\u00c0\u0001R\u0017\u0010\u00c4\u0001\u001a\u00030\u00c2\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008|\u0010\u00c3\u0001R\u0018\u0010\u00c7\u0001\u001a\u00030\u00c5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u00c6\u0001R\u0017\u0010\u00ca\u0001\u001a\u00030\u00c8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008k\u0010\u00c9\u0001R\u001d\u0010\u00cd\u0001\u001a\t\u0012\u0004\u0012\u00020\u001f0\u00cb\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008e\u0010\u00cc\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00d2\u0001"
    }
    d2 = {
        "Lcom/im/freechat/data/l;",
        "Lcom/im/freechat/domain/t;",
        "Lcom/im/freechat/data/openapigen/models/Chat;",
        "it",
        "",
        "userId",
        "",
        "m0",
        "(Lcom/im/freechat/data/openapigen/models/Chat;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
        "message",
        "",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "attachments",
        "s0",
        "(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "rawAttachments",
        "v0",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "attachment",
        "",
        "q0",
        "(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "t0",
        "p0",
        "r0",
        "currentUserId",
        "chatId",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "o0",
        "(IILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "isAttachment",
        "n0",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "Lkotlin/Pair;",
        "F",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "g",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "K",
        "lastUpdateTime",
        "presentChatIds",
        "C",
        "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "M",
        "lastReadMessageIds",
        "n",
        "(IILkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/i;",
        "h",
        "synchronizing",
        "u",
        "w",
        "",
        "content",
        "attachmentUris",
        "replyToMessageId",
        "mentionAll",
        "mentions",
        "removeOnFail",
        "Q",
        "(IILjava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forwardMessageIds",
        "E",
        "(IILjava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "messageIds",
        "O",
        "(ILjava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "messageId",
        "newContent",
        "A",
        "(IJLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "T",
        "k",
        "forEveryone",
        "p",
        "(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "l",
        "(ILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "i",
        "(Lcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "B",
        "mediaId",
        "width",
        "height",
        "j",
        "(IILjava/lang/String;IILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "messagedId",
        "o",
        "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "R",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "targetUserId",
        "reason",
        "J",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "a",
        "accepted",
        "G",
        "t",
        "u0",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "getUser",
        "b",
        "H",
        "s",
        "D",
        "name",
        "targetIds",
        "y",
        "(ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "targetId",
        "v",
        "skipIfNotEmpty",
        "L",
        "(IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "selfUserId",
        "memberId",
        "f",
        "(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "m",
        "P",
        "q",
        "x",
        "d",
        "isPublic",
        "z",
        "show",
        "e",
        "title",
        "c",
        "(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Ljava/io/File;",
        "file",
        "U",
        "(IILjava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pinState",
        "I",
        "bio",
        "S",
        "nickname",
        "N",
        "avatarUrl",
        "r",
        "Lcom/im/freechat/data/openapigen/api/ChatApi;",
        "Lcom/im/freechat/data/openapigen/api/ChatApi;",
        "chatApi",
        "Lcom/im/freechat/data/openapigen/api/FriendApi;",
        "Lcom/im/freechat/data/openapigen/api/FriendApi;",
        "friendApi",
        "Lcom/im/freechat/data/openapigen/api/UserApi;",
        "Lcom/im/freechat/data/openapigen/api/UserApi;",
        "userApi",
        "Lcom/im/freechat/data/openapigen/api/MessageApi;",
        "Lcom/im/freechat/data/openapigen/api/MessageApi;",
        "messageApi",
        "Lcom/im/freechat/data/openapigen/api/FileApi;",
        "Lcom/im/freechat/data/openapigen/api/FileApi;",
        "fileApi",
        "Lcom/im/freechat/data/sources/api/RemoteApi;",
        "Lcom/im/freechat/data/sources/api/RemoteApi;",
        "remoteApi",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;",
        "chatMapper",
        "Lcom/im/freechat/domain/h;",
        "Lcom/im/freechat/domain/h;",
        "fileUtil",
        "Lcom/im/freechat/domain/q;",
        "Lcom/im/freechat/domain/q;",
        "serverDateRepository",
        "Lcom/im/freechat/domain/n;",
        "Lcom/im/freechat/domain/n;",
        "notificationManager",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;",
        "chatDao",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;",
        "userDao",
        "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;",
        "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;",
        "memberDao",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;",
        "messageDao",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;",
        "attachmentDao",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;",
        "friendStatusDao",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;",
        "messageMapper",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;",
        "chatRequestMapper",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
        "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;",
        "contactEntityMapper",
        "Lkotlinx/coroutines/flow/t;",
        "Lkotlinx/coroutines/flow/t;",
        "chatsSyncState",
        "Lcom/im/freechat/data/sources/database/MainDatabase;",
        "database",
        "<init>",
        "(Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/openapigen/api/ChatApi;Lcom/im/freechat/data/openapigen/api/FriendApi;Lcom/im/freechat/data/openapigen/api/UserApi;Lcom/im/freechat/data/openapigen/api/MessageApi;Lcom/im/freechat/data/openapigen/api/FileApi;Lcom/im/freechat/data/sources/api/RemoteApi;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/q;Lcom/im/freechat/domain/n;)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/data/openapigen/api/ChatApi;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/data/openapigen/api/FriendApi;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/data/openapigen/api/UserApi;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/data/openapigen/api/MessageApi;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/im/freechat/data/openapigen/api/FileApi;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/im/freechat/data/sources/api/RemoteApi;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/im/freechat/domain/h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/im/freechat/domain/q;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lcom/im/freechat/domain/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final p:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final r:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final t:Lkotlinx/coroutines/flow/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/openapigen/api/ChatApi;Lcom/im/freechat/data/openapigen/api/FriendApi;Lcom/im/freechat/data/openapigen/api/UserApi;Lcom/im/freechat/data/openapigen/api/MessageApi;Lcom/im/freechat/data/openapigen/api/FileApi;Lcom/im/freechat/data/sources/api/RemoteApi;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/domain/h;Lcom/im/freechat/domain/q;Lcom/im/freechat/domain/n;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/sources/database/MainDatabase;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/api/ChatApi;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/openapigen/api/FriendApi;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/data/openapigen/api/UserApi;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/data/openapigen/api/MessageApi;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/data/openapigen/api/FileApi;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/im/freechat/data/sources/api/RemoteApi;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Lcom/im/freechat/domain/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Lcom/im/freechat/domain/q;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p11    # Lcom/im/freechat/domain/n;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userApi"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageApi"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileApi"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteApi"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatMapper"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUtil"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverDateRepository"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/im/freechat/data/l;->a:Lcom/im/freechat/data/openapigen/api/ChatApi;

    .line 3
    iput-object p3, p0, Lcom/im/freechat/data/l;->b:Lcom/im/freechat/data/openapigen/api/FriendApi;

    .line 4
    iput-object p4, p0, Lcom/im/freechat/data/l;->c:Lcom/im/freechat/data/openapigen/api/UserApi;

    .line 5
    iput-object p5, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    .line 6
    iput-object p6, p0, Lcom/im/freechat/data/l;->e:Lcom/im/freechat/data/openapigen/api/FileApi;

    .line 7
    iput-object p7, p0, Lcom/im/freechat/data/l;->f:Lcom/im/freechat/data/sources/api/RemoteApi;

    .line 8
    iput-object p8, p0, Lcom/im/freechat/data/l;->g:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;

    .line 9
    iput-object p9, p0, Lcom/im/freechat/data/l;->h:Lcom/im/freechat/domain/h;

    .line 10
    iput-object p10, p0, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    .line 11
    iput-object p11, p0, Lcom/im/freechat/data/l;->j:Lcom/im/freechat/domain/n;

    .line 12
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->chatDao()Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    .line 13
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->userDao()Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->memberDao()Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/l;->m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    .line 15
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->messageDao()Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    .line 16
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->attachmentDao()Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    move-result-object p2

    iput-object p2, p0, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    .line 17
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/MainDatabase;->friendStatusDao()Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/l;->p:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    .line 18
    new-instance p1, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-direct {p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    .line 19
    new-instance p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;

    invoke-direct {p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/data/l;->r:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;

    .line 20
    new-instance p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-direct {p1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    .line 21
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlinx/coroutines/flow/j0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/t;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/data/l;->t:Lkotlinx/coroutines/flow/t;

    return-void
.end method

.method public static final synthetic V(Lcom/im/freechat/data/l;Lcom/im/freechat/data/openapigen/models/Chat;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/l;->m0(Lcom/im/freechat/data/openapigen/models/Chat;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic W(Lcom/im/freechat/data/l;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/l;->n0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic X(Lcom/im/freechat/data/l;IILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/im/freechat/data/l;->o0(IILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic Y(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    return-object p0
.end method

.method public static final synthetic Z(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    return-object p0
.end method

.method public static final synthetic a0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/openapigen/api/FileApi;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/l;->e:Lcom/im/freechat/data/openapigen/api/FileApi;

    return-object p0
.end method

.method public static final synthetic b0(Lcom/im/freechat/data/l;)Lcom/im/freechat/domain/h;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/l;->h:Lcom/im/freechat/domain/h;

    return-object p0
.end method

.method public static final synthetic c0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/openapigen/api/FriendApi;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/l;->b:Lcom/im/freechat/data/openapigen/api/FriendApi;

    return-object p0
.end method

.method public static final synthetic d0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    return-object p0
.end method

.method public static final synthetic e0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    return-object p0
.end method

.method public static final synthetic f0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/api/RemoteApi;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/l;->f:Lcom/im/freechat/data/sources/api/RemoteApi;

    return-object p0
.end method

.method public static final synthetic g0(Lcom/im/freechat/data/l;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/l;->p0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h0(Lcom/im/freechat/data/l;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/l;->q0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i0(Lcom/im/freechat/data/l;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/l;->r0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j0(Lcom/im/freechat/data/l;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/l;->s0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k0(Lcom/im/freechat/data/l;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/l;->t0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l0(Lcom/im/freechat/data/l;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/l;->v0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final m0(Lcom/im/freechat/data/openapigen/models/Chat;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/openapigen/models/Chat;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/l$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/l$b;

    iget v1, v0, Lcom/im/freechat/data/l$b;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$b;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$b;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/l$b;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lcom/im/freechat/data/l$b;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, v6, Lcom/im/freechat/data/l$b;->g:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object p1, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    iget p1, v6, Lcom/im/freechat/data/l$b;->d:I

    iget-object p2, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v1, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget p1, v6, Lcom/im/freechat/data/l$b;->d:I

    iget-object p2, v6, Lcom/im/freechat/data/l$b;->c:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/data/openapigen/models/Channel;

    iget-object v1, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v3, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget p1, v6, Lcom/im/freechat/data/l$b;->d:I

    iget-object p2, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v1, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    iget p1, v6, Lcom/im/freechat/data/l$b;->d:I

    iget-object p2, v6, Lcom/im/freechat/data/l$b;->c:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    iget-object v1, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v3, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    check-cast v3, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    iget p2, v6, Lcom/im/freechat/data/l$b;->d:I

    iget-object p1, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v1, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->g:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;

    invoke-virtual {p3, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;->map(Lcom/im/freechat/data/openapigen/models/Chat;I)Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    move-result-object p3

    .line 5
    iget-object v1, p0, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object p0, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    iput-object p1, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    iput p2, v6, Lcom/im/freechat/data/l$b;->d:I

    const/4 v3, 0x1

    iput v3, v6, Lcom/im/freechat/data/l$b;->g:I

    invoke-virtual {v1, p3, v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_1

    return-object v0

    :cond_1
    move-object v1, p0

    .line 6
    :goto_1
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getOpponent()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 7
    iget-object v3, v1, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v3, p3, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/data/openapigen/models/User;I)Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    move-result-object v3

    .line 8
    iget-object v4, v1, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getId()I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->mapToMemberEntity(Lcom/im/freechat/data/openapigen/models/User;I)Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    move-result-object p3

    .line 9
    iget-object v4, v1, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v1, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    iput-object p1, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    iput-object p3, v6, Lcom/im/freechat/data/l$b;->c:Ljava/lang/Object;

    iput p2, v6, Lcom/im/freechat/data/l$b;->d:I

    const/4 v5, 0x2

    iput v5, v6, Lcom/im/freechat/data/l$b;->g:I

    invoke-virtual {v4, v3, v6}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, v1

    move-object v1, p1

    move p1, p2

    move-object p2, p3

    .line 10
    :goto_2
    iget-object p3, v3, Lcom/im/freechat/data/l;->m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    iput-object v3, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    iput-object v1, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    iput-object v2, v6, Lcom/im/freechat/data/l$b;->c:Ljava/lang/Object;

    iput p1, v6, Lcom/im/freechat/data/l$b;->d:I

    const/4 v4, 0x3

    iput v4, v6, Lcom/im/freechat/data/l$b;->g:I

    invoke-virtual {p3, p2, v6}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    move-object p2, v1

    move-object v1, v3

    :goto_3
    move-object v7, p2

    move p2, p1

    move-object p1, v7

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/Chat;->getChannel()Lcom/im/freechat/data/openapigen/models/Channel;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 12
    iget-object v3, v1, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iget-object v4, v1, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v4, p3}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/data/openapigen/models/Channel;)Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    move-result-object v4

    iput-object v1, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    iput-object p1, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    iput-object p3, v6, Lcom/im/freechat/data/l$b;->c:Ljava/lang/Object;

    iput p2, v6, Lcom/im/freechat/data/l$b;->d:I

    const/4 v5, 0x4

    iput v5, v6, Lcom/im/freechat/data/l$b;->g:I

    invoke-virtual {v3, v4, v6}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, v1

    move-object v1, p1

    move p1, p2

    move-object p2, p3

    .line 13
    :goto_4
    iget-object p3, v3, Lcom/im/freechat/data/l;->m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    iget-object v4, v3, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {p2}, Lcom/im/freechat/data/openapigen/models/Channel;->getId()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->mapToMemberEntity(Lcom/im/freechat/data/openapigen/models/Channel;I)Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    move-result-object p2

    iput-object v3, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    iput-object v1, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    iput-object v2, v6, Lcom/im/freechat/data/l$b;->c:Ljava/lang/Object;

    iput p1, v6, Lcom/im/freechat/data/l$b;->d:I

    const/4 v4, 0x5

    iput v4, v6, Lcom/im/freechat/data/l$b;->g:I

    invoke-virtual {p3, p2, v6}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_6

    return-object v0

    :cond_6
    move-object p2, v1

    move-object v1, v3

    :goto_5
    move p3, p1

    :goto_6
    move-object p1, v1

    goto :goto_7

    :cond_7
    move p3, p2

    move-object p2, p1

    goto :goto_6

    .line 14
    :goto_7
    iget-object v1, p1, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {p2}, Lcom/im/freechat/data/openapigen/models/Chat;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_8

    :cond_8
    const-wide/16 v4, 0x0

    :goto_8
    iput-object p1, v6, Lcom/im/freechat/data/l$b;->a:Ljava/lang/Object;

    iput-object v2, v6, Lcom/im/freechat/data/l$b;->b:Ljava/lang/Object;

    const/4 p2, 0x6

    iput p2, v6, Lcom/im/freechat/data/l$b;->g:I

    move v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->readOtherMessages(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_9

    return-object v0

    .line 15
    :cond_9
    :goto_9
    check-cast p3, Ljava/util/List;

    .line 16
    iget-object p1, p1, Lcom/im/freechat/data/l;->j:Lcom/im/freechat/domain/n;

    invoke-interface {p1, p3}, Lcom/im/freechat/domain/n;->c(Ljava/util/List;)V

    .line 17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final n0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/l$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/l$f;

    iget v1, v0, Lcom/im/freechat/data/l$f;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$f;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$f;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/l$f;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/l$f;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$f;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    goto :goto_3

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput v3, v0, Lcom/im/freechat/data/l$f;->c:I

    invoke-virtual {p1, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getLastMessageId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_2

    :cond_5
    const-wide/16 p1, 0x0

    :goto_2
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    :goto_3
    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private final o0(IILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/im/freechat/shared/entities/message/Message;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/im/freechat/data/l$l;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/im/freechat/data/l$l;

    iget v3, v2, Lcom/im/freechat/data/l$l;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/data/l$l;->m:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/data/l$l;

    invoke-direct {v2, v1, v0}, Lcom/im/freechat/data/l$l;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/im/freechat/data/l$l;->k:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/im/freechat/data/l$l;->m:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v4, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_1
    iget-object v4, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v6, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    :goto_1
    move-object/from16 v16, v4

    goto/16 :goto_c

    :pswitch_2
    iget-wide v6, v2, Lcom/im/freechat/data/l$l;->j:J

    iget v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iget-object v9, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v11, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v7, v6

    move-object v6, v11

    goto/16 :goto_b

    :pswitch_3
    iget-wide v6, v2, Lcom/im/freechat/data/l$l;->j:J

    iget v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iget-object v9, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v11, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v16, v6

    move-object v6, v11

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v16, v10

    move-object v6, v11

    goto/16 :goto_c

    :pswitch_4
    iget-wide v9, v2, Lcom/im/freechat/data/l$l;->j:J

    iget v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iget-object v11, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v13, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    check-cast v13, Lcom/im/freechat/data/l;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v5, v4

    move-object v4, v12

    move-object v15, v13

    move-object v13, v11

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v16, v12

    move-object v6, v13

    goto/16 :goto_c

    :pswitch_5
    iget-wide v9, v2, Lcom/im/freechat/data/l$l;->j:J

    iget v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iget-object v11, v2, Lcom/im/freechat/data/l$l;->d:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v13, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    check-cast v13, Lcom/im/freechat/shared/entities/message/Message;

    iget-object v14, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    check-cast v14, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_6
    iget-wide v9, v2, Lcom/im/freechat/data/l$l;->j:J

    iget v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iget-object v11, v2, Lcom/im/freechat/data/l$l;->g:Ljava/lang/Object;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v2, Lcom/im/freechat/data/l$l;->f:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iget-object v13, v2, Lcom/im/freechat/data/l$l;->e:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    iget-object v14, v2, Lcom/im/freechat/data/l$l;->d:Ljava/lang/Object;

    check-cast v14, Ljava/util/Collection;

    iget-object v15, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v5, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/shared/entities/message/Message;

    iget-object v8, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v12

    goto/16 :goto_6

    :pswitch_7
    iget-wide v4, v2, Lcom/im/freechat/data/l$l;->j:J

    iget v8, v2, Lcom/im/freechat/data/l$l;->h:I

    iget-object v9, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v10, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/shared/entities/message/Message;

    iget-object v11, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_8
    iget-wide v4, v2, Lcom/im/freechat/data/l$l;->j:J

    iget v8, v2, Lcom/im/freechat/data/l$l;->h:I

    iget-object v9, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v10, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/shared/entities/message/Message;

    iget-object v11, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_9
    iget v4, v2, Lcom/im/freechat/data/l$l;->i:I

    iget v5, v2, Lcom/im/freechat/data/l$l;->h:I

    iget-object v8, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/shared/entities/message/Message;

    iget-object v9, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v19, v5

    move-object/from16 v41, v8

    move-object v8, v0

    move-object/from16 v0, v41

    goto :goto_2

    :pswitch_a
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object v1, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    move/from16 v4, p1

    iput v4, v2, Lcom/im/freechat/data/l$l;->h:I

    move/from16 v5, p2

    iput v5, v2, Lcom/im/freechat/data/l$l;->i:I

    iput v7, v2, Lcom/im/freechat/data/l$l;->m:I

    invoke-direct {v1, v6, v2}, Lcom/im/freechat/data/l;->n0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_1

    return-object v3

    :cond_1
    move-object v9, v1

    move/from16 v19, v4

    move v4, v5

    :goto_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    move-wide/from16 v21, v10

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v39, 0xfffc

    const/16 v40, 0x0

    move-object/from16 v20, v0

    move/from16 v23, v4

    .line 5
    invoke-static/range {v20 .. v40}, Lcom/im/freechat/shared/entities/message/Message;->copy$default(Lcom/im/freechat/shared/entities/message/Message;JILcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/String;JLcom/im/freechat/shared/entities/message/Message$MessageStatus;Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/Long;Lcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/util/Map;ZLjava/util/List;ZILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v5

    .line 6
    iget-object v8, v9, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-virtual {v8, v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->mapToEntity(Lcom/im/freechat/shared/entities/message/Message;)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v16

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 7
    iget-object v5, v9, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/im/freechat/domain/q$a;->a(Lcom/im/freechat/domain/q;ZILjava/lang/Object;)J

    move-result-wide v22

    .line 8
    sget-object v24, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SENDING:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    .line 9
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v5

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/contact/Sender;->getUserId()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v26

    .line 10
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v27

    .line 11
    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v30, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x7c4d

    .line 12
    invoke-static/range {v16 .. v35}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->copy$default(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;ZILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v5

    .line 13
    iget-object v8, v9, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v9, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    iput-object v0, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    iput v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iput-wide v10, v2, Lcom/im/freechat/data/l$l;->j:J

    const/4 v12, 0x2

    iput v12, v2, Lcom/im/freechat/data/l$l;->m:I

    invoke-virtual {v8, v5, v2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insert(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_2

    return-object v3

    :cond_2
    move v8, v4

    move-wide/from16 v41, v10

    move-object v10, v0

    move-object v11, v9

    move-object v9, v5

    move-wide/from16 v4, v41

    .line 14
    :goto_3
    iget-object v0, v11, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    invoke-virtual {v10}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v12

    iput-object v11, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    iput-object v10, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    iput-object v9, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    iput v8, v2, Lcom/im/freechat/data/l$l;->h:I

    iput-wide v4, v2, Lcom/im/freechat/data/l$l;->j:J

    const/4 v14, 0x3

    iput v14, v2, Lcom/im/freechat/data/l$l;->m:I

    invoke-virtual {v0, v12, v13, v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->getAttachmentByMessageId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    .line 15
    :cond_3
    :goto_4
    check-cast v0, Ljava/lang/Iterable;

    .line 16
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v0, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v13, v0

    move-object v15, v9

    move-object v0, v10

    move-wide v9, v4

    move v4, v8

    move-object v8, v11

    move-object v11, v12

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 18
    move-object v12, v5

    check-cast v12, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 19
    iput-object v8, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    iput-object v0, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    iput-object v15, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    iput-object v11, v2, Lcom/im/freechat/data/l$l;->d:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$l;->e:Ljava/lang/Object;

    iput-object v12, v2, Lcom/im/freechat/data/l$l;->f:Ljava/lang/Object;

    iput-object v11, v2, Lcom/im/freechat/data/l$l;->g:Ljava/lang/Object;

    iput v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iput-wide v9, v2, Lcom/im/freechat/data/l$l;->j:J

    const/4 v5, 0x4

    iput v5, v2, Lcom/im/freechat/data/l$l;->m:I

    invoke-direct {v8, v7, v2}, Lcom/im/freechat/data/l;->n0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_4

    return-object v3

    :cond_4
    move-object v14, v11

    move-object/from16 v16, v12

    move-object/from16 v41, v5

    move-object v5, v0

    move-object/from16 v0, v41

    :goto_6
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v35, 0xfffc

    const/16 v36, 0x0

    move-wide/from16 v19, v9

    .line 20
    invoke-static/range {v16 .. v36}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->copy$default(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    move-object v11, v14

    goto :goto_5

    .line 21
    :cond_5
    check-cast v11, Ljava/util/List;

    .line 22
    iget-object v5, v8, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    iput-object v8, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    iput-object v0, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    iput-object v15, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    iput-object v11, v2, Lcom/im/freechat/data/l$l;->d:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-object v12, v2, Lcom/im/freechat/data/l$l;->e:Ljava/lang/Object;

    iput-object v12, v2, Lcom/im/freechat/data/l$l;->f:Ljava/lang/Object;

    iput-object v12, v2, Lcom/im/freechat/data/l$l;->g:Ljava/lang/Object;

    iput v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iput-wide v9, v2, Lcom/im/freechat/data/l$l;->j:J

    const/4 v12, 0x5

    iput v12, v2, Lcom/im/freechat/data/l$l;->m:I

    invoke-virtual {v5, v11, v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_6

    return-object v3

    :cond_6
    move-object v13, v0

    move-object v14, v8

    move-object v12, v15

    .line 23
    :goto_7
    :try_start_4
    iget-object v0, v14, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v5, Lcom/im/freechat/data/l$m;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v13, v8}, Lcom/im/freechat/data/l$m;-><init>(ILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)V

    iput-object v14, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    iput-object v12, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    iput-object v11, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v2, Lcom/im/freechat/data/l$l;->d:Ljava/lang/Object;

    iput v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iput-wide v9, v2, Lcom/im/freechat/data/l$l;->j:J

    const/4 v8, 0x6

    iput v8, v2, Lcom/im/freechat/data/l$l;->m:I

    invoke-static {v0, v5, v2}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move v5, v4

    move-object v13, v11

    move-object v4, v12

    move-object v15, v14

    .line 24
    :goto_8
    :try_start_5
    check-cast v0, Lcom/im/freechat/data/openapigen/models/ForwardMessage200Response;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v0, :cond_8

    .line 25
    :try_start_6
    invoke-virtual {v0}, Lcom/im/freechat/data/openapigen/models/ForwardMessage200Response;->getData()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    move-object v6, v15

    goto/16 :goto_c

    :cond_8
    const/4 v0, 0x0

    :goto_9
    :try_start_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 26
    iget-object v8, v15, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    .line 27
    iget-object v0, v15, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    const/4 v14, 0x0

    invoke-static {v0, v6, v7, v14}, Lcom/im/freechat/domain/q$a;->a(Lcom/im/freechat/domain/q;ZILjava/lang/Object;)J

    move-result-wide v6

    .line 28
    iput-object v15, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    iput-object v4, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    iput v5, v2, Lcom/im/freechat/data/l$l;->h:I

    iput-wide v11, v2, Lcom/im/freechat/data/l$l;->j:J

    const/4 v0, 0x7

    iput v0, v2, Lcom/im/freechat/data/l$l;->m:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-wide/from16 v16, v11

    move-object v0, v13

    move-wide v13, v6

    move-object v6, v15

    move-object v15, v2

    :try_start_8
    invoke-virtual/range {v8 .. v15}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setMessageId(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-ne v7, v3, :cond_9

    return-object v3

    :cond_9
    move-object v9, v0

    move-object v10, v4

    move v4, v5

    .line 29
    :goto_a
    :try_start_9
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v0

    move-wide/from16 v7, v16

    :cond_a
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 30
    iget-object v5, v6, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    .line 31
    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v19

    .line 32
    iget-object v11, v6, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v0, v7, v8}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->getMediaId(Ljava/lang/String;J)J

    move-result-wide v21

    .line 33
    iput-object v6, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    iput-object v10, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    iput-object v9, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    iput v4, v2, Lcom/im/freechat/data/l$l;->h:I

    iput-wide v7, v2, Lcom/im/freechat/data/l$l;->j:J

    const/16 v0, 0x8

    iput v0, v2, Lcom/im/freechat/data/l$l;->m:I

    move-object/from16 v18, v5

    move-object/from16 v23, v2

    invoke-virtual/range {v18 .. v23}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->setAttachmentId(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    return-object v3

    .line 34
    :cond_b
    iget-object v0, v6, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v6, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    iput-object v10, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    const/16 v7, 0x9

    iput v7, v2, Lcom/im/freechat/data/l$l;->m:I

    invoke-virtual {v0, v4, v5, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->updateLastMessageId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    if-ne v0, v3, :cond_c

    return-object v3

    :catch_4
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v6, v15

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object/from16 v16, v12

    move-object v6, v14

    .line 35
    :goto_c
    sget-object v4, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {v4, v0}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    .line 36
    iget-object v0, v6, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    sget-object v24, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SEND_FAILED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x7fdf

    const/16 v35, 0x0

    invoke-static/range {v16 .. v35}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->copy$default(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;ZILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/im/freechat/data/l$l;->a:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$l;->b:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$l;->c:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$l;->d:Ljava/lang/Object;

    const/16 v5, 0xa

    iput v5, v2, Lcom/im/freechat/data/l$l;->m:I

    invoke-virtual {v0, v4, v2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->update(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    return-object v3

    .line 37
    :cond_c
    :goto_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final p0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/l$g0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/l$g0;

    iget v1, v0, Lcom/im/freechat/data/l$g0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$g0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$g0;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/l$g0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/l$g0;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$g0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    .line 5
    new-instance v2, Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;

    .line 6
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getChatId()I

    move-result v4

    .line 7
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileSize()Ljava/lang/Long;

    move-result-object v6

    .line 9
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getFileName()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {p2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMimeType()Ljava/lang/String;

    move-result-object p2

    .line 11
    new-instance v8, Lcom/im/freechat/data/openapigen/models/Document;

    invoke-direct {v8, v5, v7, v6, p2}, Lcom/im/freechat/data/openapigen/models/Document;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getContent()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getReplyToMessageId()Ljava/lang/Long;

    move-result-object p1

    .line 14
    invoke-direct {v2, v4, v8, p2, p1}, Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;-><init>(ILcom/im/freechat/data/openapigen/models/Document;Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    iput v3, v0, Lcom/im/freechat/data/l$g0;->c:I

    invoke-interface {p3, v2, v0}, Lcom/im/freechat/data/openapigen/api/MessageApi;->sendDocument(Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 16
    :cond_3
    :goto_1
    check-cast p3, Lretrofit2/Response;

    .line 17
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/data/openapigen/models/SendText200Response;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/SendText200Response;->getData()J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private final q0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/l$l0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/l$l0;

    iget v1, v0, Lcom/im/freechat/data/l$l0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$l0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$l0;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/l$l0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/l$l0;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$l0;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v2, Lcom/im/freechat/data/l$m0;

    invoke-direct {v2, p1, p2, v3}, Lcom/im/freechat/data/l$m0;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/im/freechat/data/l$l0;->c:I

    invoke-static {p3, v2, v0}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p3, Lcom/im/freechat/data/openapigen/models/SendText200Response;

    if-eqz p3, :cond_4

    .line 6
    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/SendText200Response;->getData()J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private final r0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/l$n0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/l$n0;

    iget v1, v0, Lcom/im/freechat/data/l$n0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$n0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$n0;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/l$n0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/l$n0;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$n0;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v2, Lcom/im/freechat/data/l$o0;

    invoke-direct {v2, p1, p0, p2, v3}, Lcom/im/freechat/data/l$o0;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/l;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/im/freechat/data/l$n0;->c:I

    invoke-static {p3, v2, v0}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p3, Lcom/im/freechat/data/openapigen/models/SendText200Response;

    if-eqz p3, :cond_4

    .line 6
    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/SendText200Response;->getData()J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v3
.end method

.method private final s0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/im/freechat/data/l$q0;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/im/freechat/data/l$q0;

    iget v5, v4, Lcom/im/freechat/data/l$q0;->g:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/im/freechat/data/l$q0;->g:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/im/freechat/data/l$q0;

    invoke-direct {v4, v0, v3}, Lcom/im/freechat/data/l$q0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/im/freechat/data/l$q0;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v13

    .line 1
    iget v5, v4, Lcom/im/freechat/data/l$q0;->g:I

    const/4 v6, 0x1

    const/4 v14, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :pswitch_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_1
    iget-object v1, v4, Lcom/im/freechat/data/l$q0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v2, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iget-object v5, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v6, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_d

    :pswitch_2
    iget-object v1, v4, Lcom/im/freechat/data/l$q0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v2, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v6, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3
    iget-object v1, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v5, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v1, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v5, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    iget-object v1, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v5, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_6
    iget-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v2, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    goto/16 :goto_5

    :pswitch_7
    iget-object v1, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v5, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v2, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    goto :goto_2

    :pswitch_9
    iget-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v2, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_a
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    iget-object v2, v0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v3, Lcom/im/freechat/data/l$r0;

    invoke-direct {v3, v1, v14}, Lcom/im/freechat/data/l$r0;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    iput v6, v4, Lcom/im/freechat/data/l$q0;->g:I

    invoke-static {v2, v3, v4}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_1

    return-object v13

    :cond_1
    move-object v2, v0

    .line 6
    :goto_1
    check-cast v3, Lcom/im/freechat/data/openapigen/models/SendText200Response;

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v3}, Lcom/im/freechat/data/openapigen/models/SendText200Response;->getData()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    move-object v15, v2

    move-object v2, v14

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    goto/16 :goto_a

    :cond_2
    move-object v3, v1

    move-object v15, v2

    move-object v1, v14

    move-object v2, v1

    goto/16 :goto_a

    .line 8
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_6

    .line 9
    iput-object v0, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v4, Lcom/im/freechat/data/l$q0;->g:I

    invoke-direct {v0, v2, v4}, Lcom/im/freechat/data/l;->v0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_4

    return-object v13

    :cond_4
    move-object v5, v0

    .line 10
    :goto_2
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 11
    iput-object v5, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    iput-object v2, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v4, Lcom/im/freechat/data/l$q0;->g:I

    invoke-direct {v5, v1, v2, v4}, Lcom/im/freechat/data/l;->r0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_5

    return-object v13

    :cond_5
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_3
    check-cast v3, Ljava/lang/Long;

    :goto_4
    move-object v15, v5

    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v16

    goto/16 :goto_a

    .line 12
    :cond_6
    iput-object v0, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v4, Lcom/im/freechat/data/l$q0;->g:I

    invoke-direct {v0, v2, v4}, Lcom/im/freechat/data/l;->v0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_7

    return-object v13

    :cond_7
    move-object v5, v0

    .line 13
    :goto_5
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    .line 14
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 15
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v7

    sget-object v8, Lcom/im/freechat/data/l$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_1

    .line 16
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :pswitch_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported attachment type!"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :pswitch_c
    iput-object v5, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    iput-object v2, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    const/4 v7, 0x7

    iput v7, v4, Lcom/im/freechat/data/l$q0;->g:I

    invoke-direct {v5, v1, v3, v4}, Lcom/im/freechat/data/l;->p0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_8

    return-object v13

    :cond_8
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_6
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    goto :goto_9

    .line 18
    :pswitch_d
    iput-object v5, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    iput-object v2, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    const/4 v7, 0x6

    iput v7, v4, Lcom/im/freechat/data/l$q0;->g:I

    invoke-direct {v5, v1, v3, v4}, Lcom/im/freechat/data/l;->t0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_9

    return-object v13

    :cond_9
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_7
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    goto :goto_9

    .line 19
    :pswitch_e
    iput-object v5, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v1, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    iput-object v2, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v4, Lcom/im/freechat/data/l$q0;->g:I

    invoke-direct {v5, v1, v3, v4}, Lcom/im/freechat/data/l;->q0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_a

    return-object v13

    :cond_a
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_8
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 20
    :goto_9
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_4

    .line 21
    :goto_a
    iget-object v5, v15, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    .line 22
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide v7

    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 24
    iget-object v11, v15, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    const/4 v12, 0x0

    invoke-static {v11, v12, v6, v14}, Lcom/im/freechat/domain/q$a;->a(Lcom/im/freechat/domain/q;ZILjava/lang/Object;)J

    move-result-wide v11

    .line 25
    iput-object v15, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v3, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    iput-object v2, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    iput-object v1, v4, Lcom/im/freechat/data/l$q0;->d:Ljava/lang/Object;

    const/16 v6, 0x8

    iput v6, v4, Lcom/im/freechat/data/l$q0;->g:I

    move-wide v6, v7

    move-wide v8, v9

    move-wide v10, v11

    move-object v12, v4

    invoke-virtual/range {v5 .. v12}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setMessageId(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v13, :cond_b

    return-object v13

    :cond_b
    move-object v5, v3

    move-object v6, v15

    :goto_b
    if-eqz v2, :cond_e

    .line 26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 27
    iget-object v4, v11, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v5

    iget-object v7, v11, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v7, v3, v14, v15}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->getMediaId(Ljava/lang/String;J)J

    move-result-wide v7

    iput-object v11, v9, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v10, v9, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    iput-object v2, v9, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    iput-object v1, v9, Lcom/im/freechat/data/l$q0;->d:Ljava/lang/Object;

    const/16 v3, 0x9

    iput v3, v9, Lcom/im/freechat/data/l$q0;->g:I

    move-object v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->setAttachmentId(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_c

    return-object v13

    :cond_c
    :goto_d
    const/4 v14, 0x0

    goto :goto_c

    :cond_d
    move-object v1, v2

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    .line 28
    :cond_e
    iget-object v2, v6, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getChatId()I

    move-result v3

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/im/freechat/data/l$q0;->a:Ljava/lang/Object;

    iput-object v5, v4, Lcom/im/freechat/data/l$q0;->b:Ljava/lang/Object;

    iput-object v5, v4, Lcom/im/freechat/data/l$q0;->c:Ljava/lang/Object;

    iput-object v5, v4, Lcom/im/freechat/data/l$q0;->d:Ljava/lang/Object;

    const/16 v5, 0xa

    iput v5, v4, Lcom/im/freechat/data/l$q0;->g:I

    invoke-virtual {v2, v3, v1, v4}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->updateLastMessageId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_f

    return-object v13

    .line 29
    :cond_f
    :goto_e
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private final t0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/l$s0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/l$s0;

    iget v1, v0, Lcom/im/freechat/data/l$s0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$s0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$s0;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/l$s0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/l$s0;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$s0;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v2, Lcom/im/freechat/data/l$t0;

    invoke-direct {v2, p1, p2, v3}, Lcom/im/freechat/data/l$t0;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/im/freechat/data/l$s0;->c:I

    invoke-static {p3, v2, v0}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p3, Lcom/im/freechat/data/openapigen/models/SendText200Response;

    if-eqz p3, :cond_4

    .line 6
    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/SendText200Response;->getData()J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private final v0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/im/freechat/data/l$n1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/data/l$n1;

    iget v4, v3, Lcom/im/freechat/data/l$n1;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/im/freechat/data/l$n1;->f:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/im/freechat/data/l$n1;

    invoke-direct {v3, v0, v2}, Lcom/im/freechat/data/l$n1;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/im/freechat/data/l$n1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 1
    iget v5, v3, Lcom/im/freechat/data/l$n1;->f:I

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Lcom/im/freechat/data/l$n1;->a:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v3, Lcom/im/freechat/data/l$n1;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v3, Lcom/im/freechat/data/l$n1;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v8, v3, Lcom/im/freechat/data/l$n1;->a:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, v3, Lcom/im/freechat/data/l$n1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v5, v3, Lcom/im/freechat/data/l$n1;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v21, v5

    move-object v5, v1

    move-object/from16 v1, v21

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance v5, Lcom/im/freechat/data/l$o1;

    invoke-direct {v5, v0, v2, v1, v10}, Lcom/im/freechat/data/l$o1;-><init>(Lcom/im/freechat/data/l;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v3, Lcom/im/freechat/data/l$n1;->a:Ljava/lang/Object;

    iput-object v2, v3, Lcom/im/freechat/data/l$n1;->b:Ljava/lang/Object;

    iput v9, v3, Lcom/im/freechat/data/l$n1;->f:I

    invoke-static {v1, v5, v3}, Lcom/im/freechat/domain/f;->a(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5

    return-object v4

    :cond_5
    move-object v1, v0

    move-object v5, v2

    .line 7
    :goto_1
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 8
    new-instance v9, Lcom/im/freechat/data/l$p1;

    invoke-direct {v9, v1, v2, v10}, Lcom/im/freechat/data/l$p1;-><init>(Lcom/im/freechat/data/l;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v3, Lcom/im/freechat/data/l$n1;->a:Ljava/lang/Object;

    iput-object v5, v3, Lcom/im/freechat/data/l$n1;->b:Ljava/lang/Object;

    iput-object v2, v3, Lcom/im/freechat/data/l$n1;->c:Ljava/lang/Object;

    iput v8, v3, Lcom/im/freechat/data/l$n1;->f:I

    invoke-static {v5, v9, v3}, Lcom/im/freechat/domain/f;->a(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_6

    return-object v4

    :cond_6
    move-object v8, v1

    move-object v1, v2

    .line 9
    :goto_2
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uploaded Previews: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Ljava/lang/Iterable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    const/16 v20, 0x0

    const-string v13, ", "

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v9, v11}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    new-instance v2, Lcom/im/freechat/data/l$q1;

    invoke-direct {v2, v8, v1, v10}, Lcom/im/freechat/data/l$q1;-><init>(Lcom/im/freechat/data/l;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v3, Lcom/im/freechat/data/l$n1;->a:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$n1;->b:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$n1;->c:Ljava/lang/Object;

    iput v7, v3, Lcom/im/freechat/data/l$n1;->f:I

    invoke-static {v5, v2, v3}, Lcom/im/freechat/domain/f;->a(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_7

    return-object v4

    .line 11
    :cond_7
    :goto_3
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compressing: Uploaded Attachments: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Ljava/lang/Iterable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v15, 0x0

    const-string v8, ", "

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public A(IJLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p5, Lcom/im/freechat/data/l$w;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/im/freechat/data/l$w;

    iget v1, v0, Lcom/im/freechat/data/l$w;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$w;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$w;

    invoke-direct {v0, p0, p5}, Lcom/im/freechat/data/l$w;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/im/freechat/data/l$w;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$w;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p2, v0, Lcom/im/freechat/data/l$w;->c:J

    iget-object p1, v0, Lcom/im/freechat/data/l$w;->b:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Ljava/lang/String;

    iget-object p1, v0, Lcom/im/freechat/data/l$w;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/l;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p5, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v2, Lcom/im/freechat/data/l$x;

    const/4 v9, 0x0

    move-object v4, v2

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/im/freechat/data/l$x;-><init>(IJLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$w;->a:Ljava/lang/Object;

    iput-object p4, v0, Lcom/im/freechat/data/l$w;->b:Ljava/lang/Object;

    iput-wide p2, v0, Lcom/im/freechat/data/l$w;->c:J

    iput v3, v0, Lcom/im/freechat/data/l$w;->f:I

    invoke-static {p5, v2, v0}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    move-wide v1, p2

    move-object v3, p4

    .line 5
    check-cast p5, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    if-eqz p5, :cond_4

    .line 6
    iget-object v0, p1, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->modifyMessage$default(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;JLjava/lang/String;JILjava/lang/Object;)V

    .line 7
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public B(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/l$l1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/l$l1;

    iget v1, v0, Lcom/im/freechat/data/l$l1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$l1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$l1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/l$l1;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/l$l1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$l1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Lcom/im/freechat/data/l$l1;->b:I

    iget-object v2, v0, Lcom/im/freechat/data/l$l1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v2, Lcom/im/freechat/data/l$m1;

    invoke-direct {v2, p1, v5}, Lcom/im/freechat/data/l$m1;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$l1;->a:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$l1;->b:I

    iput v4, v0, Lcom/im/freechat/data/l$l1;->e:I

    invoke-static {p2, v2, v0}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    .line 6
    iget-object p2, v2, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object v5, v0, Lcom/im/freechat/data/l$l1;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/l$l1;->e:I

    invoke-virtual {p2, p1, v5, v5, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->pinMessage(ILjava/lang/Long;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public C(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 43
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/im/freechat/data/l$f1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/data/l$f1;

    iget v3, v2, Lcom/im/freechat/data/l$f1;->o:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/data/l$f1;->o:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/data/l$f1;

    invoke-direct {v2, v0, v1}, Lcom/im/freechat/data/l$f1;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/im/freechat/data/l$f1;->m:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/im/freechat/data/l$f1;->o:I

    packed-switch v4, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget-wide v11, v2, Lcom/im/freechat/data/l$f1;->l:J

    iget-wide v13, v2, Lcom/im/freechat/data/l$f1;->k:J

    iget-object v4, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/data/openapigen/models/Message;

    iget-object v15, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    check-cast v15, Ljava/util/Iterator;

    iget-object v5, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;

    iget-object v7, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    iget-object v8, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    iget-object v6, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v9, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v16, 0x0

    goto/16 :goto_14

    :pswitch_1
    iget-wide v4, v2, Lcom/im/freechat/data/l$f1;->l:J

    iget-wide v6, v2, Lcom/im/freechat/data/l$f1;->k:J

    iget-object v8, v2, Lcom/im/freechat/data/l$f1;->i:Ljava/lang/Object;

    check-cast v8, Lkotlin/Pair;

    iget-object v9, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/openapigen/models/Message;

    iget-object v10, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;

    iget-object v12, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    iget-object v13, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    check-cast v13, Ljava/util/Set;

    iget-object v14, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v15, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    move-wide/from16 p1, v4

    iget-object v4, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v0, v6

    move-object v5, v11

    move-object v7, v12

    move-object v6, v14

    const-wide/16 v16, 0x0

    move-wide/from16 v11, p1

    move-object/from16 v39, v9

    move-object v9, v4

    move-object/from16 v4, v39

    move-object/from16 v40, v15

    move-object v15, v10

    move-object/from16 v10, v40

    goto/16 :goto_13

    :pswitch_2
    iget-wide v4, v2, Lcom/im/freechat/data/l$f1;->l:J

    iget-wide v6, v2, Lcom/im/freechat/data/l$f1;->k:J

    iget-object v8, v2, Lcom/im/freechat/data/l$f1;->j:Ljava/lang/Object;

    check-cast v8, Lkotlin/Pair;

    iget-object v9, v2, Lcom/im/freechat/data/l$f1;->i:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    iget-object v10, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/openapigen/models/Message;

    iget-object v11, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;

    iget-object v13, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    check-cast v14, Ljava/util/Set;

    iget-object v15, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    move-wide/from16 p1, v4

    iget-object v4, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v9

    move-object v1, v10

    const-wide/16 v16, 0x0

    move-wide/from16 v9, p1

    goto/16 :goto_f

    :pswitch_3
    iget-wide v4, v2, Lcom/im/freechat/data/l$f1;->l:J

    iget-wide v6, v2, Lcom/im/freechat/data/l$f1;->k:J

    iget-object v8, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/data/openapigen/models/Message;

    iget-object v9, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;

    iget-object v11, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    check-cast v12, Ljava/util/Set;

    iget-object v13, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v39, v11

    move-object v11, v9

    move-object/from16 v40, v12

    move-object v12, v10

    move-wide v9, v4

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v14, v40

    move-object v15, v13

    move-object/from16 v13, v39

    goto/16 :goto_d

    :pswitch_4
    iget-wide v4, v2, Lcom/im/freechat/data/l$f1;->l:J

    iget-wide v6, v2, Lcom/im/freechat/data/l$f1;->k:J

    iget-object v8, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v9, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;

    iget-object v11, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    check-cast v12, Ljava/util/Set;

    iget-object v13, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_5
    iget-wide v4, v2, Lcom/im/freechat/data/l$f1;->l:J

    iget-wide v6, v2, Lcom/im/freechat/data/l$f1;->k:J

    iget-object v8, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    iget-object v9, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/Set;

    iget-object v10, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v10

    move-object v14, v11

    move-object v15, v12

    move-object v11, v8

    move-object v12, v9

    goto/16 :goto_3

    :pswitch_6
    iget-wide v4, v2, Lcom/im/freechat/data/l$f1;->k:J

    iget-object v6, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x1

    iput v1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 5
    iget-object v4, v0, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object v0, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    move-object/from16 v5, p3

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    iput-object v6, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    move-wide/from16 v7, p1

    iput-wide v7, v2, Lcom/im/freechat/data/l$f1;->k:J

    iput v1, v2, Lcom/im/freechat/data/l$f1;->o:I

    invoke-virtual {v4, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getLastSyncMessageId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    return-object v3

    :cond_1
    move-wide/from16 v39, v7

    move-object v8, v0

    move-object v7, v5

    move-wide/from16 v4, v39

    :goto_1
    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 6
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object v7, v11

    move-wide v11, v4

    .line 8
    :goto_2
    iget-object v8, v15, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v5, Lcom/im/freechat/data/l$g1;

    const/16 v18, 0x0

    move-object v4, v5

    move-object v0, v5

    move-wide v5, v9

    move-object/from16 v20, v7

    move-object/from16 v19, v8

    move-wide v7, v11

    move-wide/from16 v21, v9

    move-object v9, v13

    move-object/from16 v10, v18

    invoke-direct/range {v4 .. v10}, Lcom/im/freechat/data/l$g1;-><init>(JJLkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    iput-object v15, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    iput-object v14, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    move-object/from16 v4, v20

    iput-object v4, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->i:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->j:Ljava/lang/Object;

    iput-wide v11, v2, Lcom/im/freechat/data/l$f1;->k:J

    move-wide/from16 v9, v21

    iput-wide v9, v2, Lcom/im/freechat/data/l$f1;->l:J

    const/4 v5, 0x2

    iput v5, v2, Lcom/im/freechat/data/l$f1;->o:I

    move-object/from16 v5, v19

    invoke-static {v5, v0, v2}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2

    return-object v3

    :cond_2
    move-wide v6, v11

    move-object v12, v1

    move-object v11, v4

    move-wide v4, v9

    move-object v1, v0

    .line 9
    :goto_3
    check-cast v1, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;

    .line 10
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;->getData()Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;

    move-result-object v10

    .line 11
    invoke-virtual {v10}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;->getList()Ljava/util/List;

    move-result-object v0

    .line 12
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/im/freechat/data/openapigen/models/Message;

    .line 14
    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/Message;->getChatId()I

    move-result v9

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 15
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Lcom/im/freechat/data/openapigen/models/Message;

    .line 17
    invoke-virtual/range {v18 .. v18}, Lcom/im/freechat/data/openapigen/models/Message;->getDeletedAt()Ljava/lang/Long;

    move-result-object v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    goto :goto_6

    :cond_6
    const/16 v18, 0x0

    :goto_6
    if-eqz v18, :cond_5

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 18
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v18, v3

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 20
    check-cast v1, Lcom/im/freechat/data/openapigen/models/Message;

    .line 21
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 22
    :cond_8
    iget-object v0, v15, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v15, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    iput-object v14, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    iput-object v12, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    iput-object v11, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    iput-object v10, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    iput-object v9, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    iput-object v8, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    iput-wide v6, v2, Lcom/im/freechat/data/l$f1;->k:J

    iput-wide v4, v2, Lcom/im/freechat/data/l$f1;->l:J

    const/4 v1, 0x3

    iput v1, v2, Lcom/im/freechat/data/l$f1;->o:I

    invoke-virtual {v0, v9, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->deleteByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v18

    if-ne v0, v3, :cond_9

    return-object v3

    .line 23
    :cond_9
    :goto_8
    invoke-interface {v12, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/im/freechat/data/openapigen/models/Message;

    .line 26
    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v18

    move-object/from16 p1, v1

    invoke-static/range {v18 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/Message;->getEditedAt()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 27
    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_a

    :cond_a
    const-wide/16 v18, 0x0

    .line 28
    :goto_a
    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/Message;->getEditedAt()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v1, v18, v20

    if-gez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_c

    .line 29
    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object/from16 v1, p1

    goto :goto_9

    .line 30
    :cond_d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v12

    move-wide/from16 v39, v4

    move-object v4, v10

    move-wide/from16 v9, v39

    move-wide/from16 v41, v6

    move-object v7, v11

    move-wide/from16 v11, v41

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/im/freechat/data/openapigen/models/Message;

    .line 31
    iget-object v6, v15, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {v5}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v15, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    iput-object v14, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    iput-object v7, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    iput-object v4, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    iput-object v0, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    move-object/from16 p1, v0

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/im/freechat/data/l$f1;->i:Ljava/lang/Object;

    iput-object v0, v2, Lcom/im/freechat/data/l$f1;->j:Ljava/lang/Object;

    iput-wide v11, v2, Lcom/im/freechat/data/l$f1;->k:J

    iput-wide v9, v2, Lcom/im/freechat/data/l$f1;->l:J

    const/4 v0, 0x4

    iput v0, v2, Lcom/im/freechat/data/l$f1;->o:I

    invoke-virtual {v6, v8, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getMessagesByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_e

    return-object v3

    :cond_e
    move-object v8, v5

    move-object v5, v15

    move-object v15, v13

    move-object v13, v7

    move-wide v6, v11

    move-object/from16 v11, p1

    move-object v12, v4

    move-object v4, v14

    move-object v14, v1

    move-object v1, v0

    :goto_d
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    if-eqz v0, :cond_18

    .line 32
    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getEditTime()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_e

    :cond_f
    const-wide/16 v18, 0x0

    .line 33
    :goto_e
    invoke-virtual {v8}, Lcom/im/freechat/data/openapigen/models/Message;->getEditedAt()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v1, v18, v20

    if-gez v1, :cond_18

    .line 34
    iget-object v1, v5, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    move-object/from16 v18, v3

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->mapToEntityAndAttachment(Lcom/im/freechat/data/openapigen/models/Message;Ljava/lang/Long;)Lkotlin/Pair;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    if-eqz v19, :cond_11

    .line 36
    iget-object v3, v5, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x7fdf

    const/16 v38, 0x0

    move-object/from16 p1, v3

    invoke-static/range {v19 .. v38}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->copy$default(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;ZILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v3

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    iput-object v4, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    iput-object v15, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    iput-object v14, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    iput-object v12, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    iput-object v11, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    iput-object v8, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    iput-object v0, v2, Lcom/im/freechat/data/l$f1;->i:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/data/l$f1;->j:Ljava/lang/Object;

    iput-wide v6, v2, Lcom/im/freechat/data/l$f1;->k:J

    iput-wide v9, v2, Lcom/im/freechat/data/l$f1;->l:J

    move-object/from16 p2, v0

    const/4 v0, 0x5

    iput v0, v2, Lcom/im/freechat/data/l$f1;->o:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v18

    if-ne v0, v3, :cond_10

    return-object v3

    :cond_10
    move-object/from16 v0, p2

    move-object/from16 v39, v8

    move-object v8, v1

    move-object/from16 v1, v39

    .line 37
    :goto_f
    sget-object v18, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_10

    :cond_11
    move-object/from16 p2, v0

    move-object/from16 v3, v18

    move-object/from16 v39, v8

    move-object v8, v1

    move-object/from16 v1, v39

    .line 38
    :goto_10
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_17

    .line 39
    invoke-virtual {v0}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getAttachments()Ljava/util/List;

    move-result-object v0

    move-wide/from16 v20, v9

    .line 40
    new-instance v9, Ljava/util/ArrayList;

    move-wide/from16 v22, v6

    const/16 v10, 0xa

    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 42
    check-cast v6, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 43
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 44
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 46
    check-cast v7, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;

    .line 47
    invoke-virtual {v7}, Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;->getMediaId()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 48
    iget-object v3, v5, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    iput-object v4, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    iput-object v15, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    iput-object v14, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    iput-object v12, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    iput-object v11, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    iput-object v8, v2, Lcom/im/freechat/data/l$f1;->i:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/im/freechat/data/l$f1;->j:Ljava/lang/Object;

    move-wide/from16 v9, v22

    iput-wide v9, v2, Lcom/im/freechat/data/l$f1;->k:J

    move-wide/from16 v6, v20

    iput-wide v6, v2, Lcom/im/freechat/data/l$f1;->l:J

    move-object/from16 v18, v1

    const/4 v1, 0x6

    iput v1, v2, Lcom/im/freechat/data/l$f1;->o:I

    invoke-virtual {v3, v0, v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->deleteByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v19

    if-ne v0, v3, :cond_14

    return-object v3

    :cond_14
    move-wide v0, v9

    move-object v10, v4

    move-object v9, v5

    move-object v5, v12

    move-object/from16 v4, v18

    move-object/from16 v39, v15

    move-object v15, v11

    move-wide v11, v6

    move-object v7, v13

    move-object v13, v14

    move-object/from16 v6, v39

    .line 49
    :goto_13
    iget-object v14, v9, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_15

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    :cond_15
    iput-object v9, v2, Lcom/im/freechat/data/l$f1;->a:Ljava/lang/Object;

    iput-object v10, v2, Lcom/im/freechat/data/l$f1;->b:Ljava/lang/Object;

    iput-object v6, v2, Lcom/im/freechat/data/l$f1;->c:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$f1;->d:Ljava/lang/Object;

    iput-object v7, v2, Lcom/im/freechat/data/l$f1;->e:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->f:Ljava/lang/Object;

    iput-object v15, v2, Lcom/im/freechat/data/l$f1;->g:Ljava/lang/Object;

    iput-object v4, v2, Lcom/im/freechat/data/l$f1;->h:Ljava/lang/Object;

    move-object/from16 v18, v5

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/im/freechat/data/l$f1;->i:Ljava/lang/Object;

    iput-wide v0, v2, Lcom/im/freechat/data/l$f1;->k:J

    iput-wide v11, v2, Lcom/im/freechat/data/l$f1;->l:J

    const/4 v5, 0x7

    iput v5, v2, Lcom/im/freechat/data/l$f1;->o:I

    invoke-virtual {v14, v8, v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insert(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_16

    return-object v3

    :cond_16
    move-object v8, v13

    move-object/from16 v5, v18

    move-wide v13, v0

    .line 50
    :goto_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v1, v4

    move-object v4, v10

    move-wide/from16 v39, v11

    move-object v12, v5

    move-object v5, v9

    move-wide/from16 v9, v39

    move-object v11, v15

    move-object v15, v6

    move-wide/from16 v41, v13

    move-object v13, v7

    move-object v14, v8

    move-wide/from16 v6, v41

    goto :goto_15

    :cond_17
    move-object/from16 v18, v1

    move-object/from16 v3, v19

    move-wide/from16 v39, v6

    move-wide v6, v9

    move-wide/from16 v9, v39

    move-wide/from16 v39, v6

    move-wide v6, v9

    move-wide/from16 v9, v39

    .line 51
    :goto_15
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/Message;->getEditedAt()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v11

    move-object v1, v14

    move-object v14, v4

    move-object v4, v12

    move-wide v11, v6

    move-object v7, v13

    move-object v13, v15

    move-object v15, v5

    const/16 v5, 0xa

    goto/16 :goto_c

    :cond_18
    move-object v0, v5

    const/16 v5, 0xa

    const-wide/16 v16, 0x0

    move-object v1, v14

    move-object v14, v4

    move-object v4, v12

    move-object/from16 v39, v15

    move-object v15, v0

    move-object v0, v11

    move-wide v11, v6

    move-object v7, v13

    move-object/from16 v13, v39

    goto/16 :goto_c

    :cond_19
    const/16 v5, 0xa

    const-wide/16 v16, 0x0

    .line 52
    invoke-virtual {v4}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;->getPage()I

    move-result v0

    invoke-virtual {v4}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;->getTotal()I

    move-result v4

    if-lt v0, v4, :cond_1a

    iget-object v0, v15, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/im/freechat/domain/q;->a(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1a
    const/4 v4, 0x1

    .line 53
    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v4

    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_1b
    const/4 v4, 0x1

    .line 54
    iget-object v0, v8, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    invoke-interface {v0, v4}, Lcom/im/freechat/domain/q;->a(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public D(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/im/freechat/data/l$e;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/data/l$e;

    iget v3, v2, Lcom/im/freechat/data/l$e;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/data/l$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/data/l$e;

    invoke-direct {v2, v0, v1}, Lcom/im/freechat/data/l$e;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/im/freechat/data/l$e;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/im/freechat/data/l$e;->e:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget v4, v2, Lcom/im/freechat/data/l$e;->b:I

    iget-object v6, v2, Lcom/im/freechat/data/l$e;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget v4, v2, Lcom/im/freechat/data/l$e;->b:I

    iget-object v7, v2, Lcom/im/freechat/data/l$e;->a:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v7

    goto :goto_2

    :cond_4
    iget-object v4, v2, Lcom/im/freechat/data/l$e;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v0, v2, Lcom/im/freechat/data/l$e;->a:Ljava/lang/Object;

    iput v8, v2, Lcom/im/freechat/data/l$e;->e:I

    invoke-virtual {v1, v2}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->getCurrentUser(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move-object v4, v0

    :goto_1
    check-cast v1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getUserId()I

    move-result v1

    .line 5
    iget-object v8, v4, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object v4, v2, Lcom/im/freechat/data/l$e;->a:Ljava/lang/Object;

    iput v1, v2, Lcom/im/freechat/data/l$e;->b:I

    iput v7, v2, Lcom/im/freechat/data/l$e;->e:I

    invoke-virtual {v8, v1, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getChatById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_7

    return-object v3

    :cond_7
    move-object v15, v4

    move v4, v1

    move-object v1, v7

    :goto_2
    check-cast v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    if-eqz v1, :cond_8

    .line 6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 7
    :cond_8
    iget-object v1, v15, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    .line 8
    sget-object v11, Lcom/im/freechat/shared/entities/chat/Chat$Type;->FAVORITES:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    .line 9
    new-instance v14, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v14

    move v8, v4

    move-object v5, v14

    move/from16 v14, v16

    move-object v6, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move-object/from16 v19, v21

    invoke-direct/range {v7 .. v19}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)V

    .line 10
    iput-object v6, v2, Lcom/im/freechat/data/l$e;->a:Ljava/lang/Object;

    iput v4, v2, Lcom/im/freechat/data/l$e;->b:I

    const/4 v7, 0x3

    iput v7, v2, Lcom/im/freechat/data/l$e;->e:I

    invoke-virtual {v1, v5, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    return-object v3

    .line 11
    :cond_9
    :goto_3
    iget-object v1, v6, Lcom/im/freechat/data/l;->m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    .line 12
    sget-object v5, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v5

    .line 13
    sget-object v7, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;

    invoke-virtual {v7, v6}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v6

    .line 14
    new-instance v7, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-direct {v7, v4, v4, v6, v5}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;-><init>(IILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)V

    const/4 v4, 0x0

    .line 15
    iput-object v4, v2, Lcom/im/freechat/data/l$e;->a:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v2, Lcom/im/freechat/data/l$e;->e:I

    invoke-virtual {v1, v7, v2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    return-object v3

    .line 16
    :cond_a
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public E(IILjava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p8

    instance-of v1, v0, Lcom/im/freechat/data/l$n;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/im/freechat/data/l$n;

    iget v2, v1, Lcom/im/freechat/data/l$n;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/im/freechat/data/l$n;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/im/freechat/data/l$n;

    invoke-direct {v1, v10, v0}, Lcom/im/freechat/data/l$n;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v11, v1

    iget-object v0, v11, Lcom/im/freechat/data/l$n;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 1
    iget v1, v11, Lcom/im/freechat/data/l$n;->g:I

    const/4 v13, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v13, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget v1, v11, Lcom/im/freechat/data/l$n;->d:I

    iget v2, v11, Lcom/im/freechat/data/l$n;->c:I

    iget-object v3, v11, Lcom/im/freechat/data/l$n;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v11, Lcom/im/freechat/data/l$n;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v15, v2

    move-object v14, v3

    goto :goto_5

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p4, :cond_5

    .line 4
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_7

    invoke-interface/range {p5 .. p5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v15, p1

    move/from16 v1, p2

    move-object/from16 v14, p3

    :goto_3
    move-object v4, v10

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 5
    iput-object v10, v11, Lcom/im/freechat/data/l$n;->a:Ljava/lang/Object;

    move-object/from16 v14, p3

    iput-object v14, v11, Lcom/im/freechat/data/l$n;->b:Ljava/lang/Object;

    move/from16 v15, p1

    iput v15, v11, Lcom/im/freechat/data/l$n;->c:I

    move/from16 v9, p2

    iput v9, v11, Lcom/im/freechat/data/l$n;->d:I

    iput v2, v11, Lcom/im/freechat/data/l$n;->g:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/im/freechat/data/l;->Q(IILjava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_8

    return-object v12

    :cond_8
    move/from16 v1, p2

    goto :goto_3

    .line 6
    :goto_5
    new-instance v0, Lcom/im/freechat/data/l$o;

    const/4 v2, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v4

    move-object/from16 p3, v14

    move/from16 p4, v15

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-direct/range {p1 .. p6}, Lcom/im/freechat/data/l$o;-><init>(Lcom/im/freechat/data/l;Ljava/util/List;IILkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    iput-object v1, v11, Lcom/im/freechat/data/l$n;->a:Ljava/lang/Object;

    iput-object v1, v11, Lcom/im/freechat/data/l$n;->b:Ljava/lang/Object;

    iput v13, v11, Lcom/im/freechat/data/l$n;->g:I

    invoke-static {v0, v11}, Lkotlinx/coroutines/t0;->g(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_9

    return-object v12

    .line 7
    :cond_9
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public F(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/im/freechat/data/l$x0;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/im/freechat/data/l$x0;

    iget v2, v1, Lcom/im/freechat/data/l$x0;->k:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/im/freechat/data/l$x0;->k:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/im/freechat/data/l$x0;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/im/freechat/data/l$x0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/im/freechat/data/l$x0;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v1, Lcom/im/freechat/data/l$x0;->k:I

    const/16 v5, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    iget-object v13, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v13, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    const/16 v6, 0xa

    move-object v3, v1

    move-object v1, v12

    move-object v12, v13

    goto/16 :goto_1a

    :pswitch_1
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v14, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v6, 0xa

    goto/16 :goto_17

    :pswitch_2
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v14, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_3
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v14, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_4
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->g:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v13, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/Map;

    iget-object v15, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    goto/16 :goto_13

    :pswitch_5
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/Map;

    iget-object v14, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v14, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_6
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->g:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v13, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/Map;

    iget-object v15, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    goto/16 :goto_11

    :pswitch_7
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_8
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_9
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v12, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map;

    iget-object v13, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v13, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_a
    iget v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    iget-object v9, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    iget-object v11, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v10

    move-object v13, v11

    :goto_1
    move-object v11, v9

    goto :goto_3

    :pswitch_b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v7, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v10, v2

    move-object v9, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move/from16 v0, p1

    .line 6
    :goto_2
    iget-object v11, v10, Lcom/im/freechat/data/l;->a:Lcom/im/freechat/data/openapigen/api/ChatApi;

    new-instance v12, Lcom/im/freechat/data/l$y0;

    invoke-direct {v12, v9, v8}, Lcom/im/freechat/data/l$y0;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    iput-object v10, v3, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v1, v3, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v8, v3, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v8, v3, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput v0, v3, Lcom/im/freechat/data/l$x0;->h:I

    iput v7, v3, Lcom/im/freechat/data/l$x0;->k:I

    invoke-static {v11, v12, v3}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_1

    return-object v4

    :cond_1
    move-object v12, v1

    move-object v1, v3

    move-object v3, v4

    move-object v13, v10

    move v4, v0

    move-object v0, v11

    goto :goto_1

    :goto_3
    check-cast v0, Lcom/im/freechat/data/openapigen/models/GetChats200Response;

    invoke-virtual {v0}, Lcom/im/freechat/data/openapigen/models/GetChats200Response;->getData()Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;

    move-result-object v10

    .line 7
    invoke-virtual {v10}, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;->getList()Ljava/util/List;

    move-result-object v0

    .line 8
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 10
    check-cast v14, Lcom/im/freechat/data/openapigen/models/Chat;

    .line 11
    iget-object v15, v13, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    .line 12
    invoke-virtual {v14}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastMessage()Lcom/im/freechat/data/openapigen/models/Message;

    move-result-object v6

    .line 13
    invoke-virtual {v14}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastMessage()Lcom/im/freechat/data/openapigen/models/Message;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/im/freechat/data/openapigen/models/Message;->getSenderId()I

    move-result v7

    if-ne v7, v4, :cond_2

    const/4 v7, 0x1

    goto :goto_5

    :cond_2
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_3

    .line 14
    invoke-virtual {v14}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object v7

    goto :goto_6

    :cond_3
    invoke-virtual {v14}, Lcom/im/freechat/data/openapigen/models/Chat;->getOpponentLastReadMessageId()Ljava/lang/Long;

    move-result-object v7

    .line 15
    :goto_6
    invoke-virtual {v15, v6, v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->mapToEntityAndAttachment(Lcom/im/freechat/data/openapigen/models/Message;Ljava/lang/Long;)Lkotlin/Pair;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {v10}, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;->getList()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 18
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 20
    check-cast v6, Lcom/im/freechat/data/openapigen/models/Chat;

    .line 21
    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/Chat;->getId()I

    move-result v14

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v14

    .line 22
    new-instance v15, Lkotlin/Pair;

    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/Chat;->getOpponentLastReadMessageId()Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v15, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0xa

    goto :goto_7

    .line 23
    :cond_5
    invoke-interface {v12, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 26
    check-cast v6, Lkotlin/Pair;

    .line 27
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    if-eqz v6, :cond_6

    .line 28
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 29
    :cond_7
    iget-object v5, v13, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v13, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v12, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v11, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v10, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v9, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    const/4 v6, 0x2

    iput v6, v1, Lcom/im/freechat/data/l$x0;->k:I

    invoke-virtual {v5, v0, v1}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    .line 30
    :cond_8
    :goto_9
    iget-object v0, v13, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 33
    check-cast v7, Lkotlin/Pair;

    .line 34
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 35
    :cond_9
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_a

    .line 36
    :cond_a
    iput-object v13, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v12, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v11, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v10, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v8, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    const/4 v6, 0x3

    iput v6, v1, Lcom/im/freechat/data/l$x0;->k:I

    invoke-virtual {v0, v5, v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insert(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    return-object v3

    :cond_b
    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    .line 37
    :goto_b
    iget-object v0, v12, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;->getList()Ljava/util/List;

    move-result-object v5

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 40
    check-cast v7, Lcom/im/freechat/data/openapigen/models/Chat;

    .line 41
    iget-object v13, v12, Lcom/im/freechat/data/l;->g:Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;

    invoke-virtual {v13, v7, v4}, Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;->map(Lcom/im/freechat/data/openapigen/models/Chat;I)Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_c
    iput-object v12, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v11, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v10, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v9, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    const/4 v5, 0x4

    iput v5, v1, Lcom/im/freechat/data/l$x0;->k:I

    invoke-virtual {v0, v6, v1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->insertOrUpdatePartial(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d

    return-object v3

    .line 42
    :cond_d
    :goto_d
    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;->getList()Ljava/util/List;

    move-result-object v0

    .line 43
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/im/freechat/data/openapigen/models/Chat;

    .line 45
    invoke-virtual {v7}, Lcom/im/freechat/data/openapigen/models/Chat;->getOpponent()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result v7

    if-ne v7, v4, :cond_f

    const/4 v7, 0x1

    goto :goto_f

    :cond_f
    const/4 v7, 0x0

    :goto_f
    const/4 v13, 0x1

    xor-int/2addr v7, v13

    if-eqz v7, :cond_e

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 46
    :cond_10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v3

    move-object v3, v1

    move-object v1, v11

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/im/freechat/data/openapigen/models/Chat;

    .line 47
    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/Chat;->getChannel()Lcom/im/freechat/data/openapigen/models/Channel;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 48
    iget-object v11, v12, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v11, v7}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/data/openapigen/models/Channel;)Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    move-result-object v11

    .line 49
    iget-object v13, v12, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/Chat;->getId()I

    move-result v14

    invoke-virtual {v13, v7, v14}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->mapToMemberEntity(Lcom/im/freechat/data/openapigen/models/Channel;I)Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    move-result-object v7

    .line 50
    iget-object v13, v12, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v12, v3, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v1, v3, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v0, v3, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput-object v6, v3, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    iput-object v7, v3, Lcom/im/freechat/data/l$x0;->g:Ljava/lang/Object;

    iput v4, v3, Lcom/im/freechat/data/l$x0;->h:I

    const/4 v14, 0x5

    iput v14, v3, Lcom/im/freechat/data/l$x0;->k:I

    invoke-virtual {v13, v11, v3}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_11

    return-object v5

    :cond_11
    move-object v13, v1

    move-object v1, v3

    move-object v3, v5

    move-object v11, v9

    move-object v14, v12

    move-object v9, v7

    move-object v12, v10

    move-object v10, v0

    .line 51
    :goto_11
    iget-object v0, v14, Lcom/im/freechat/data/l;->m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    iput-object v14, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v13, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v12, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v11, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v10, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput-object v6, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    iput-object v8, v1, Lcom/im/freechat/data/l$x0;->g:Ljava/lang/Object;

    iput v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    const/4 v5, 0x6

    iput v5, v1, Lcom/im/freechat/data/l$x0;->k:I

    invoke-virtual {v0, v9, v1}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_12

    return-object v3

    :cond_12
    move-object v9, v6

    .line 52
    :goto_12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v5, v3

    move-object v6, v9

    move-object v0, v10

    move-object v9, v11

    move-object v10, v12

    move-object v12, v14

    move-object v3, v1

    move-object v1, v13

    .line 53
    :cond_13
    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/Chat;->getOpponent()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 54
    iget-object v11, v12, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v11, v7, v4}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/data/openapigen/models/User;I)Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    move-result-object v11

    .line 55
    iget-object v13, v12, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/Chat;->getId()I

    move-result v14

    invoke-virtual {v13, v7, v14}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->mapToMemberEntity(Lcom/im/freechat/data/openapigen/models/User;I)Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    move-result-object v7

    .line 56
    iget-object v13, v12, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v12, v3, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v1, v3, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v0, v3, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput-object v6, v3, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    iput-object v7, v3, Lcom/im/freechat/data/l$x0;->g:Ljava/lang/Object;

    iput v4, v3, Lcom/im/freechat/data/l$x0;->h:I

    const/4 v14, 0x7

    iput v14, v3, Lcom/im/freechat/data/l$x0;->k:I

    invoke-virtual {v13, v11, v3}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_14

    return-object v5

    :cond_14
    move-object v13, v1

    move-object v1, v3

    move-object v3, v5

    move-object v11, v9

    move-object v14, v12

    move-object v9, v7

    move-object v12, v10

    move-object v10, v0

    .line 57
    :goto_13
    iget-object v0, v14, Lcom/im/freechat/data/l;->m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    iput-object v14, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v13, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v12, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v11, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v10, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput-object v6, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    iput-object v8, v1, Lcom/im/freechat/data/l$x0;->g:Ljava/lang/Object;

    iput v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    const/16 v5, 0x8

    iput v5, v1, Lcom/im/freechat/data/l$x0;->k:I

    invoke-virtual {v0, v9, v1}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_15

    return-object v3

    :cond_15
    move-object v9, v6

    .line 58
    :goto_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v6, v9

    move-object v0, v10

    move-object v9, v11

    move-object v10, v12

    move-object v12, v14

    goto :goto_15

    :cond_16
    move-object v13, v1

    move-object v1, v3

    move-object v3, v5

    .line 59
    :goto_15
    iget-object v5, v12, Lcom/im/freechat/data/l;->m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    .line 60
    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/Chat;->getId()I

    move-result v7

    .line 61
    sget-object v11, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v11

    .line 62
    sget-object v15, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;

    invoke-virtual {v15, v14}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v15

    .line 63
    new-instance v14, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-direct {v14, v4, v7, v15, v11}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;-><init>(IILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)V

    .line 64
    iput-object v12, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v13, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v10, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v9, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v0, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput-object v6, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    iput v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    const/16 v7, 0x9

    iput v7, v1, Lcom/im/freechat/data/l$x0;->k:I

    invoke-virtual {v5, v14, v1}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_17

    return-object v3

    :cond_17
    move-object v11, v9

    move-object v14, v12

    move-object v9, v6

    move-object v12, v10

    move-object v10, v0

    .line 65
    :goto_16
    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastMessage()Lcom/im/freechat/data/openapigen/models/Message;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/im/freechat/data/openapigen/models/Message;->getForwardSender()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 66
    iget-object v5, v14, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v5, v0, v4}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/data/openapigen/models/User;I)Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    move-result-object v0

    .line 67
    iget-object v5, v14, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v14, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v13, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v12, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v11, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v10, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput-object v9, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    iput v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    const/16 v6, 0xa

    iput v6, v1, Lcom/im/freechat/data/l$x0;->k:I

    invoke-virtual {v5, v0, v1}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_18

    return-object v3

    .line 68
    :cond_18
    :goto_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_18

    :cond_19
    const/16 v6, 0xa

    .line 69
    :goto_18
    iget-object v0, v14, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/Chat;->getId()I

    move-result v19

    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_19

    :cond_1a
    const-wide/16 v15, 0x0

    :goto_19
    move-wide/from16 v20, v15

    iput-object v14, v1, Lcom/im/freechat/data/l$x0;->a:Ljava/lang/Object;

    iput-object v13, v1, Lcom/im/freechat/data/l$x0;->b:Ljava/lang/Object;

    iput-object v12, v1, Lcom/im/freechat/data/l$x0;->c:Ljava/lang/Object;

    iput-object v11, v1, Lcom/im/freechat/data/l$x0;->d:Ljava/lang/Object;

    iput-object v10, v1, Lcom/im/freechat/data/l$x0;->e:Ljava/lang/Object;

    iput-object v8, v1, Lcom/im/freechat/data/l$x0;->f:Ljava/lang/Object;

    iput v4, v1, Lcom/im/freechat/data/l$x0;->h:I

    const/16 v5, 0xb

    iput v5, v1, Lcom/im/freechat/data/l$x0;->k:I

    move-object/from16 v17, v0

    move/from16 v18, v4

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v22}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->readOtherMessages(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1b

    return-object v3

    :cond_1b
    move-object v5, v3

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v14

    move-object v3, v1

    move-object v1, v13

    .line 70
    :goto_1a
    check-cast v0, Ljava/util/List;

    .line 71
    iget-object v7, v12, Lcom/im/freechat/data/l;->j:Lcom/im/freechat/domain/n;

    invoke-interface {v7, v0}, Lcom/im/freechat/domain/n;->c(Ljava/util/List;)V

    move-object v0, v9

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_10

    :cond_1c
    const/16 v6, 0xa

    .line 72
    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;->getPage()I

    move-result v0

    invoke-virtual {v9}, Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;->getTotal()I

    move-result v7

    if-lt v0, v7, :cond_1d

    return-object v1

    .line 73
    :cond_1d
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move v0, v4

    move-object v4, v5

    move-object v9, v10

    move-object v10, v12

    const/16 v5, 0xa

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public G(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/l$c0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/l$c0;

    iget v1, v0, Lcom/im/freechat/data/l$c0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$c0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$c0;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/l$c0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/l$c0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$c0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p2, v0, Lcom/im/freechat/data/l$c0;->c:Z

    iget p1, v0, Lcom/im/freechat/data/l$c0;->b:I

    iget-object v0, v0, Lcom/im/freechat/data/l$c0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-boolean p2, v0, Lcom/im/freechat/data/l$c0;->c:Z

    iget p1, v0, Lcom/im/freechat/data/l$c0;->b:I

    iget-object v0, v0, Lcom/im/freechat/data/l$c0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->b:Lcom/im/freechat/data/openapigen/api/FriendApi;

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 5
    new-instance v3, Lcom/im/freechat/data/l$d0;

    invoke-direct {v3, p1, v2}, Lcom/im/freechat/data/l$d0;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$c0;->a:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$c0;->b:I

    iput-boolean p2, v0, Lcom/im/freechat/data/l$c0;->c:Z

    iput v4, v0, Lcom/im/freechat/data/l$c0;->f:I

    invoke-static {p3, v3, v0}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    :goto_1
    check-cast p3, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    goto :goto_3

    .line 6
    :cond_5
    new-instance v4, Lcom/im/freechat/data/l$e0;

    invoke-direct {v4, p1, v2}, Lcom/im/freechat/data/l$e0;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$c0;->a:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$c0;->b:I

    iput-boolean p2, v0, Lcom/im/freechat/data/l$c0;->c:Z

    iput v3, v0, Lcom/im/freechat/data/l$c0;->f:I

    invoke-static {p3, v4, v0}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, p0

    .line 7
    :goto_2
    check-cast p3, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    .line 8
    :goto_3
    iget-object p3, v0, Lcom/im/freechat/data/l;->p:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    .line 9
    invoke-virtual {p3, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->getByUserId(I)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_7

    .line 10
    sget-object p1, Lcom/im/freechat/shared/entities/chat/Status;->FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

    goto :goto_4

    :cond_7
    sget-object p1, Lcom/im/freechat/shared/entities/chat/Status;->NONE:Lcom/im/freechat/shared/entities/chat/Status;

    :goto_4
    move-object v5, p1

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->copy$default(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;ILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-result-object p1

    .line 11
    invoke-virtual {p3, p1}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->updateChatRequest(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V

    .line 12
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/l;->c:Lcom/im/freechat/data/openapigen/api/UserApi;

    new-instance v1, Lcom/im/freechat/data/l$u0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/im/freechat/data/l$u0;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public I(IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/im/freechat/data/l$h0;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/im/freechat/data/l$h0;

    iget v5, v4, Lcom/im/freechat/data/l$h0;->f:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/im/freechat/data/l$h0;->f:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/im/freechat/data/l$h0;

    invoke-direct {v4, v0, v3}, Lcom/im/freechat/data/l$h0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/im/freechat/data/l$h0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 1
    iget v6, v4, Lcom/im/freechat/data/l$h0;->f:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_5

    if-eq v6, v11, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget v1, v4, Lcom/im/freechat/data/l$h0;->c:I

    iget-object v2, v4, Lcom/im/freechat/data/l$h0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v4, Lcom/im/freechat/data/l$h0;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget v1, v4, Lcom/im/freechat/data/l$h0;->c:I

    iget-object v2, v4, Lcom/im/freechat/data/l$h0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v4, Lcom/im/freechat/data/l$h0;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget v1, v4, Lcom/im/freechat/data/l$h0;->c:I

    iget-object v2, v4, Lcom/im/freechat/data/l$h0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v4, Lcom/im/freechat/data/l$h0;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Lcom/im/freechat/data/l;->b:Lcom/im/freechat/data/openapigen/api/FriendApi;

    new-instance v6, Lcom/im/freechat/data/l$i0;

    invoke-direct {v6, v1, v2, v10}, Lcom/im/freechat/data/l$i0;-><init>(ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v4, Lcom/im/freechat/data/l$h0;->a:Ljava/lang/Object;

    iput-object v2, v4, Lcom/im/freechat/data/l$h0;->b:Ljava/lang/Object;

    iput v1, v4, Lcom/im/freechat/data/l$h0;->c:I

    iput v11, v4, Lcom/im/freechat/data/l$h0;->f:I

    invoke-static {v3, v6, v4}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_6

    return-object v5

    :cond_6
    move-object v6, v0

    .line 5
    :goto_1
    check-cast v3, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    .line 6
    iget-object v3, v6, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v6, v4, Lcom/im/freechat/data/l$h0;->a:Ljava/lang/Object;

    iput-object v2, v4, Lcom/im/freechat/data/l$h0;->b:Ljava/lang/Object;

    iput v1, v4, Lcom/im/freechat/data/l$h0;->c:I

    iput v9, v4, Lcom/im/freechat/data/l$h0;->f:I

    invoke-virtual {v3, v1, v4}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->getContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_7

    return-object v5

    .line 7
    :cond_7
    :goto_2
    check-cast v3, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    if-nez v3, :cond_8

    .line 8
    iput-object v6, v4, Lcom/im/freechat/data/l$h0;->a:Ljava/lang/Object;

    iput-object v2, v4, Lcom/im/freechat/data/l$h0;->b:Ljava/lang/Object;

    iput v1, v4, Lcom/im/freechat/data/l$h0;->c:I

    iput v8, v4, Lcom/im/freechat/data/l$h0;->f:I

    invoke-virtual {v6, v1, v4}, Lcom/im/freechat/data/l;->u0(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_8

    return-object v5

    :cond_8
    :goto_3
    move v13, v1

    move-object/from16 v16, v2

    .line 9
    iget-object v1, v6, Lcom/im/freechat/data/l;->p:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    .line 10
    new-instance v2, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    .line 11
    iget-object v3, v6, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    invoke-interface {v3, v11}, Lcom/im/freechat/domain/q;->a(Z)J

    move-result-wide v14

    .line 12
    sget-object v17, Lcom/im/freechat/shared/entities/chat/Status;->REQUEST_SENT:Lcom/im/freechat/shared/entities/chat/Status;

    move-object v12, v2

    .line 13
    invoke-direct/range {v12 .. v17}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;-><init>(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V

    .line 14
    iput-object v10, v4, Lcom/im/freechat/data/l$h0;->a:Ljava/lang/Object;

    iput-object v10, v4, Lcom/im/freechat/data/l$h0;->b:Ljava/lang/Object;

    iput v7, v4, Lcom/im/freechat/data/l$h0;->f:I

    invoke-virtual {v1, v2, v4}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_9

    return-object v5

    .line 15
    :cond_9
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public K(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of p1, p3, Lcom/im/freechat/data/l$t;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lcom/im/freechat/data/l$t;

    iget v0, p1, Lcom/im/freechat/data/l$t;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/im/freechat/data/l$t;->e:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/im/freechat/data/l$t;

    invoke-direct {p1, p0, p3}, Lcom/im/freechat/data/l$t;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p1, Lcom/im/freechat/data/l$t;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p1, Lcom/im/freechat/data/l$t;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p2, p1, Lcom/im/freechat/data/l$t;->b:I

    iget-object v1, p1, Lcom/im/freechat/data/l$t;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p2, p1, Lcom/im/freechat/data/l$t;->b:I

    iget-object v1, p1, Lcom/im/freechat/data/l$t;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->a:Lcom/im/freechat/data/openapigen/api/ChatApi;

    new-instance v1, Lcom/im/freechat/data/l$u;

    invoke-direct {v1, p2, v2}, Lcom/im/freechat/data/l$u;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, p1, Lcom/im/freechat/data/l$t;->a:Ljava/lang/Object;

    iput p2, p1, Lcom/im/freechat/data/l$t;->b:I

    iput v5, p1, Lcom/im/freechat/data/l$t;->e:I

    invoke-static {p3, v1, p1}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    :goto_1
    check-cast p3, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    if-eqz p3, :cond_7

    .line 5
    iget-object p3, v1, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object v1, p1, Lcom/im/freechat/data/l$t;->a:Ljava/lang/Object;

    iput p2, p1, Lcom/im/freechat/data/l$t;->b:I

    iput v4, p1, Lcom/im/freechat/data/l$t;->e:I

    invoke-virtual {p3, p2, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->deleteChatById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6

    return-object v0

    .line 6
    :cond_6
    :goto_2
    iget-object p3, v1, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v2, p1, Lcom/im/freechat/data/l$t;->a:Ljava/lang/Object;

    iput v3, p1, Lcom/im/freechat/data/l$t;->e:I

    invoke-virtual {p3, p2, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->deleteByChatId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 7
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public L(IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/l$d1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/l$d1;

    iget v1, v0, Lcom/im/freechat/data/l$d1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$d1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$d1;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/l$d1;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/l$d1;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$d1;->f:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/l$d1;->b:Ljava/lang/Object;

    check-cast p1, Lkotlin/Pair;

    iget-object p2, v0, Lcom/im/freechat/data/l$d1;->a:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget p1, v0, Lcom/im/freechat/data/l$d1;->c:I

    iget-object p2, v0, Lcom/im/freechat/data/l$d1;->b:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/data/openapigen/models/Chat;

    iget-object v2, v0, Lcom/im/freechat/data/l$d1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p2

    move-object p2, v2

    goto :goto_2

    :cond_4
    iget p1, v0, Lcom/im/freechat/data/l$d1;->c:I

    iget-object p2, v0, Lcom/im/freechat/data/l$d1;->a:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->a:Lcom/im/freechat/data/openapigen/api/ChatApi;

    new-instance v2, Lcom/im/freechat/data/l$e1;

    invoke-direct {v2, p2, v6}, Lcom/im/freechat/data/l$e1;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$d1;->a:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$d1;->c:I

    iput v7, v0, Lcom/im/freechat/data/l$d1;->f:I

    invoke-static {p3, v2, v0}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object p2, p0

    :goto_1
    check-cast p3, Lcom/im/freechat/data/openapigen/models/GetChat200Response;

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/GetChat200Response;->getData()Lcom/im/freechat/data/openapigen/models/Chat;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 5
    iput-object p2, v0, Lcom/im/freechat/data/l$d1;->a:Ljava/lang/Object;

    iput-object p3, v0, Lcom/im/freechat/data/l$d1;->b:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$d1;->c:I

    iput v5, v0, Lcom/im/freechat/data/l$d1;->f:I

    invoke-direct {p2, p3, p1, v0}, Lcom/im/freechat/data/l;->m0(Lcom/im/freechat/data/openapigen/models/Chat;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    .line 6
    :cond_7
    :goto_2
    iget-object v2, p2, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    .line 7
    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastMessage()Lcom/im/freechat/data/openapigen/models/Message;

    move-result-object v5

    .line 8
    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastMessage()Lcom/im/freechat/data/openapigen/models/Message;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/im/freechat/data/openapigen/models/Message;->getSenderId()I

    move-result v8

    if-ne v8, p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_9

    .line 9
    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object p1

    goto :goto_4

    :cond_9
    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/Chat;->getOpponentLastReadMessageId()Ljava/lang/Long;

    move-result-object p1

    .line 10
    :goto_4
    invoke-virtual {v2, v5, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->mapToEntityAndAttachment(Lcom/im/freechat/data/openapigen/models/Message;Ljava/lang/Long;)Lkotlin/Pair;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    if-eqz p3, :cond_a

    iget-object v2, p2, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object p2, v0, Lcom/im/freechat/data/l$d1;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/l$d1;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/l$d1;->f:I

    invoke-virtual {v2, p3, v0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_a

    return-object v1

    .line 12
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_b

    iget-object p2, p2, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    iput-object v6, v0, Lcom/im/freechat/data/l$d1;->a:Ljava/lang/Object;

    iput-object v6, v0, Lcom/im/freechat/data/l$d1;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/l$d1;->f:I

    invoke-virtual {p2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insert(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    .line 13
    :cond_b
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public N(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O(ILjava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    instance-of v3, v2, Lcom/im/freechat/data/l$i;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/data/l$i;

    iget v4, v3, Lcom/im/freechat/data/l$i;->j:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/im/freechat/data/l$i;->j:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/im/freechat/data/l$i;

    invoke-direct {v3, v0, v2}, Lcom/im/freechat/data/l$i;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/im/freechat/data/l$i;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 1
    iget v5, v3, Lcom/im/freechat/data/l$i;->j:I

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_1
    iget v1, v3, Lcom/im/freechat/data/l$i;->g:I

    iget v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iget v6, v3, Lcom/im/freechat/data/l$i;->e:I

    iget-object v7, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    check-cast v7, Lkotlin/Unit;

    iget-object v7, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v8

    goto/16 :goto_f

    :pswitch_2
    iget v1, v3, Lcom/im/freechat/data/l$i;->g:I

    iget v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iget v6, v3, Lcom/im/freechat/data/l$i;->e:I

    iget-object v7, v3, Lcom/im/freechat/data/l$i;->d:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;

    iget-object v9, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_3
    iget v1, v3, Lcom/im/freechat/data/l$i;->g:I

    iget v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iget v7, v3, Lcom/im/freechat/data/l$i;->e:I

    iget-object v9, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_4
    iget v1, v3, Lcom/im/freechat/data/l$i;->g:I

    iget v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iget v7, v3, Lcom/im/freechat/data/l$i;->e:I

    iget-object v9, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v9

    goto/16 :goto_8

    :pswitch_5
    iget v1, v3, Lcom/im/freechat/data/l$i;->g:I

    iget v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iget v7, v3, Lcom/im/freechat/data/l$i;->e:I

    iget-object v9, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_6
    iget v1, v3, Lcom/im/freechat/data/l$i;->g:I

    iget v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iget v7, v3, Lcom/im/freechat/data/l$i;->e:I

    iget-object v9, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_7
    iget v1, v3, Lcom/im/freechat/data/l$i;->f:I

    iget v5, v3, Lcom/im/freechat/data/l$i;->e:I

    iget-object v9, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_8
    iget v1, v3, Lcom/im/freechat/data/l$i;->f:I

    iget v5, v3, Lcom/im/freechat/data/l$i;->e:I

    iget-object v9, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v10

    move-object/from16 v19, v9

    move v9, v1

    move-object/from16 v1, v19

    goto :goto_1

    :pswitch_9
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v0, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    iput-object v1, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    move/from16 v5, p1

    iput v5, v3, Lcom/im/freechat/data/l$i;->e:I

    move/from16 v9, p3

    iput v9, v3, Lcom/im/freechat/data/l$i;->f:I

    iput v7, v3, Lcom/im/freechat/data/l$i;->j:I

    invoke-virtual {v2, v1, v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getMessagesByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1

    return-object v4

    :cond_1
    move-object v11, v0

    .line 5
    :goto_1
    check-cast v2, Ljava/lang/Iterable;

    .line 6
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 8
    move-object v14, v12

    check-cast v14, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 9
    iget-object v13, v11, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    iget-object v15, v11, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map$default(Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 10
    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/im/freechat/shared/entities/message/Message;

    .line 13
    invoke-virtual {v13}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v13

    invoke-virtual {v13}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->isSent()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 16
    check-cast v12, Lcom/im/freechat/shared/entities/message/Message;

    .line 17
    invoke-virtual {v12}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 18
    :cond_6
    iget-object v2, v11, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object v11, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    iput-object v1, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    iput v5, v3, Lcom/im/freechat/data/l$i;->e:I

    iput v9, v3, Lcom/im/freechat/data/l$i;->f:I

    const/4 v12, 0x2

    iput v12, v3, Lcom/im/freechat/data/l$i;->j:I

    invoke-virtual {v2, v1, v3}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->checkLastMessages(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_7

    return-object v4

    :cond_7
    move-object/from16 v19, v10

    move-object v10, v1

    move v1, v9

    move-object/from16 v9, v19

    :goto_5
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v7

    .line 19
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/2addr v7, v12

    if-eqz v7, :cond_b

    .line 20
    iget-object v7, v11, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v12, Lcom/im/freechat/data/l$j;

    invoke-direct {v12, v1, v9, v8}, Lcom/im/freechat/data/l$j;-><init>(ILjava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object v11, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    iput v5, v3, Lcom/im/freechat/data/l$i;->e:I

    iput v1, v3, Lcom/im/freechat/data/l$i;->f:I

    iput v2, v3, Lcom/im/freechat/data/l$i;->g:I

    const/4 v13, 0x3

    iput v13, v3, Lcom/im/freechat/data/l$i;->j:I

    invoke-static {v7, v12, v3}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_8

    return-object v4

    :cond_8
    move/from16 v19, v5

    move v5, v1

    move v1, v2

    move-object v2, v7

    move/from16 v7, v19

    .line 21
    :goto_6
    check-cast v2, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    if-eqz v2, :cond_a

    .line 22
    iget-object v2, v11, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v11, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    iput v7, v3, Lcom/im/freechat/data/l$i;->e:I

    iput v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iput v1, v3, Lcom/im/freechat/data/l$i;->g:I

    const/4 v12, 0x4

    iput v12, v3, Lcom/im/freechat/data/l$i;->j:I

    invoke-virtual {v2, v9, v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->deleteByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    return-object v4

    .line 23
    :cond_9
    :goto_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_a
    move v2, v1

    move v1, v5

    move v5, v7

    .line 24
    :cond_b
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v10, v7}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 25
    iget-object v9, v11, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    iput-object v11, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    iput-object v8, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    iput-object v8, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    iput v5, v3, Lcom/im/freechat/data/l$i;->e:I

    iput v1, v3, Lcom/im/freechat/data/l$i;->f:I

    iput v2, v3, Lcom/im/freechat/data/l$i;->g:I

    const/4 v10, 0x5

    iput v10, v3, Lcom/im/freechat/data/l$i;->j:I

    invoke-virtual {v9, v7, v3}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->getAttachmentsByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_c

    return-object v4

    :cond_c
    move-object v10, v11

    move/from16 v19, v5

    move v5, v1

    move v1, v2

    move-object v2, v7

    move/from16 v7, v19

    .line 26
    :goto_8
    check-cast v2, Ljava/util/List;

    .line 27
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 29
    check-cast v11, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 30
    invoke-virtual {v11}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v11

    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 31
    :cond_d
    iget-object v2, v10, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v10, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    iput v7, v3, Lcom/im/freechat/data/l$i;->e:I

    iput v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iput v1, v3, Lcom/im/freechat/data/l$i;->g:I

    const/4 v11, 0x6

    iput v11, v3, Lcom/im/freechat/data/l$i;->j:I

    invoke-virtual {v2, v9, v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getMessagesByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_e

    return-object v4

    .line 32
    :cond_e
    :goto_a
    check-cast v2, Ljava/util/List;

    .line 33
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 35
    check-cast v6, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 36
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getChatId()I

    move-result v12

    .line 37
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide v13

    .line 38
    iget-object v15, v10, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    .line 39
    invoke-virtual {v6}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getAttachments()Ljava/util/List;

    move-result-object v6

    .line 40
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 42
    invoke-virtual/range {v16 .. v16}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v16

    move/from16 p1, v1

    invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_c

    :cond_10
    move/from16 p1, v1

    .line 43
    invoke-virtual {v15, v8}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->attachmentsToMediaGroup(Ljava/util/List;)Lcom/im/freechat/data/openapigen/models/MediaGroup;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;

    invoke-direct {v1, v12, v13, v14, v0}, Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;-><init>(IJLcom/im/freechat/data/openapigen/models/MediaGroup;)V

    invoke-interface {v11, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v8, 0x0

    goto :goto_b

    :cond_11
    move/from16 p1, v1

    .line 45
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v7

    move-object v7, v10

    move-object v10, v9

    move-object v9, v0

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;

    .line 46
    iget-object v2, v7, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v8, Lcom/im/freechat/data/l$k;

    const/4 v11, 0x0

    invoke-direct {v8, v0, v11}, Lcom/im/freechat/data/l$k;-><init>(Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    iput-object v0, v3, Lcom/im/freechat/data/l$i;->d:Ljava/lang/Object;

    iput v6, v3, Lcom/im/freechat/data/l$i;->e:I

    iput v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iput v1, v3, Lcom/im/freechat/data/l$i;->g:I

    const/4 v11, 0x7

    iput v11, v3, Lcom/im/freechat/data/l$i;->j:I

    invoke-static {v2, v8, v3}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_12

    return-object v4

    :cond_12
    move-object v11, v7

    move-object v7, v0

    .line 47
    :goto_e
    check-cast v2, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    .line 48
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Group edited, items remained amount:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;->getMedia()Lcom/im/freechat/data/openapigen/models/MediaGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/im/freechat/data/openapigen/models/MediaGroup;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v7}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v11

    goto :goto_d

    .line 49
    :cond_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    iget-object v2, v7, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    iput-object v7, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    iput-object v0, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/im/freechat/data/l$i;->c:Ljava/lang/Object;

    iput-object v0, v3, Lcom/im/freechat/data/l$i;->d:Ljava/lang/Object;

    iput v6, v3, Lcom/im/freechat/data/l$i;->e:I

    iput v5, v3, Lcom/im/freechat/data/l$i;->f:I

    iput v1, v3, Lcom/im/freechat/data/l$i;->g:I

    const/16 v8, 0x8

    iput v8, v3, Lcom/im/freechat/data/l$i;->j:I

    invoke-virtual {v2, v10, v3}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->deleteByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_14

    return-object v4

    :cond_14
    :goto_f
    if-eqz v1, :cond_16

    .line 51
    iput-object v0, v3, Lcom/im/freechat/data/l$i;->a:Ljava/lang/Object;

    iput-object v0, v3, Lcom/im/freechat/data/l$i;->b:Ljava/lang/Object;

    const/16 v0, 0x9

    iput v0, v3, Lcom/im/freechat/data/l$i;->j:I

    invoke-virtual {v7, v6, v5, v3}, Lcom/im/freechat/data/l;->M(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_15

    return-object v4

    .line 52
    :cond_15
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public P(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Q(IILjava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p9

    instance-of v2, v0, Lcom/im/freechat/data/l$p0;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/im/freechat/data/l$p0;

    iget v3, v2, Lcom/im/freechat/data/l$p0;->o:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/data/l$p0;->o:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/data/l$p0;

    invoke-direct {v2, v1, v0}, Lcom/im/freechat/data/l$p0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/im/freechat/data/l$p0;->m:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/im/freechat/data/l$p0;->o:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v2, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    iget-boolean v4, v2, Lcom/im/freechat/data/l$p0;->i:Z

    iget-object v5, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v6, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v34, v2

    move-object v2, v0

    move-object/from16 v0, v34

    goto/16 :goto_9

    :pswitch_2
    iget-boolean v4, v2, Lcom/im/freechat/data/l$p0;->i:Z

    iget-object v5, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v8, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object v0, v5

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_7

    :pswitch_3
    iget-boolean v4, v2, Lcom/im/freechat/data/l$p0;->i:Z

    iget-object v5, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v8, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_4
    iget-wide v4, v2, Lcom/im/freechat/data/l$p0;->k:J

    iget-boolean v8, v2, Lcom/im/freechat/data/l$p0;->i:Z

    iget-object v9, v2, Lcom/im/freechat/data/l$p0;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    iget-object v11, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v12, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    check-cast v12, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v10

    move-object v10, v9

    move-object v9, v12

    goto/16 :goto_4

    :pswitch_5
    iget-wide v4, v2, Lcom/im/freechat/data/l$p0;->l:J

    iget-wide v8, v2, Lcom/im/freechat/data/l$p0;->k:J

    iget-boolean v10, v2, Lcom/im/freechat/data/l$p0;->i:Z

    iget-object v11, v2, Lcom/im/freechat/data/l$p0;->f:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/domain/h;

    iget-object v12, v2, Lcom/im/freechat/data/l$p0;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/im/freechat/data/l$p0;->d:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    iget-object v14, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    check-cast v14, Ljava/util/Collection;

    iget-object v15, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v7, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v34, v14

    move-object v14, v7

    move-object/from16 v7, v34

    goto/16 :goto_3

    :pswitch_6
    iget-boolean v4, v2, Lcom/im/freechat/data/l$p0;->j:Z

    iget-boolean v7, v2, Lcom/im/freechat/data/l$p0;->i:Z

    iget v8, v2, Lcom/im/freechat/data/l$p0;->h:I

    iget v9, v2, Lcom/im/freechat/data/l$p0;->g:I

    iget-object v10, v2, Lcom/im/freechat/data/l$p0;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/Map;

    iget-object v11, v2, Lcom/im/freechat/data/l$p0;->d:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    iget-object v12, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    check-cast v14, Lcom/im/freechat/data/l;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v28, v7

    move/from16 v19, v8

    move/from16 v17, v9

    move-object/from16 v29, v10

    move-object/from16 v27, v11

    move-object/from16 v18, v13

    move-object v7, v14

    goto :goto_1

    :pswitch_7
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object v1, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    move-object/from16 v4, p4

    iput-object v4, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    move-object/from16 v7, p5

    iput-object v7, v2, Lcom/im/freechat/data/l$p0;->d:Ljava/lang/Object;

    move-object/from16 v8, p7

    iput-object v8, v2, Lcom/im/freechat/data/l$p0;->e:Ljava/lang/Object;

    move/from16 v9, p1

    iput v9, v2, Lcom/im/freechat/data/l$p0;->g:I

    move/from16 v10, p2

    iput v10, v2, Lcom/im/freechat/data/l$p0;->h:I

    move/from16 v11, p6

    iput-boolean v11, v2, Lcom/im/freechat/data/l$p0;->i:Z

    move/from16 v12, p8

    iput-boolean v12, v2, Lcom/im/freechat/data/l$p0;->j:Z

    iput v6, v2, Lcom/im/freechat/data/l$p0;->o:I

    invoke-direct {v1, v5, v2}, Lcom/im/freechat/data/l;->n0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_2

    return-object v3

    :cond_2
    move-object/from16 v18, v0

    move-object/from16 v27, v7

    move-object/from16 v29, v8

    move/from16 v17, v9

    move/from16 v19, v10

    move/from16 v28, v11

    move-object v0, v13

    move-object v7, v1

    move/from16 v34, v12

    move-object v12, v4

    move/from16 v4, v34

    :goto_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 5
    iget-object v0, v7, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    const/4 v10, 0x0

    invoke-static {v0, v5, v6, v10}, Lcom/im/freechat/domain/q$a;->a(Lcom/im/freechat/domain/q;ZILjava/lang/Object;)J

    move-result-wide v20

    .line 6
    sget-object v22, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SENDING:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    .line 7
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x63c0

    const/16 v33, 0x0

    move-object v14, v0

    move-wide v15, v8

    invoke-direct/range {v14 .. v33}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide/from16 v34, v8

    move-object v8, v0

    move v0, v4

    move-object v9, v7

    move-object v7, v5

    move-wide/from16 v4, v34

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 10
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 11
    iget-object v11, v9, Lcom/im/freechat/data/l;->h:Lcom/im/freechat/domain/h;

    iput-object v9, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    iput-object v8, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    iput-object v7, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    iput-object v10, v2, Lcom/im/freechat/data/l$p0;->d:Ljava/lang/Object;

    iput-object v12, v2, Lcom/im/freechat/data/l$p0;->e:Ljava/lang/Object;

    iput-object v11, v2, Lcom/im/freechat/data/l$p0;->f:Ljava/lang/Object;

    iput-boolean v0, v2, Lcom/im/freechat/data/l$p0;->i:Z

    iput-wide v4, v2, Lcom/im/freechat/data/l$p0;->k:J

    iput-wide v4, v2, Lcom/im/freechat/data/l$p0;->l:J

    const/4 v13, 0x2

    iput v13, v2, Lcom/im/freechat/data/l$p0;->o:I

    invoke-direct {v9, v6, v2}, Lcom/im/freechat/data/l;->n0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_3

    return-object v3

    :cond_3
    move-object v15, v8

    move-object v14, v9

    move-wide v8, v4

    move-object/from16 v34, v10

    move v10, v0

    move-object v0, v13

    move-object/from16 v13, v34

    :goto_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    iput-object v14, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    iput-object v15, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    iput-object v7, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$p0;->d:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/im/freechat/data/l$p0;->e:Ljava/lang/Object;

    iput-object v6, v2, Lcom/im/freechat/data/l$p0;->f:Ljava/lang/Object;

    iput-boolean v10, v2, Lcom/im/freechat/data/l$p0;->i:Z

    iput-wide v8, v2, Lcom/im/freechat/data/l$p0;->k:J

    const/4 v0, 0x3

    iput v0, v2, Lcom/im/freechat/data/l$p0;->o:I

    move-object/from16 p1, v11

    move-wide/from16 p2, v4

    move-object/from16 p4, v12

    move-wide/from16 p5, v16

    move-object/from16 p7, v2

    invoke-interface/range {p1 .. p7}, Lcom/im/freechat/domain/h;->c(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    move-wide v4, v8

    move v8, v10

    move-object v10, v13

    move-object v9, v14

    move-object v11, v15

    :goto_4
    check-cast v0, Lcom/im/freechat/shared/entities/message/Attachment;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move v0, v8

    move-object v8, v11

    const/4 v6, 0x1

    goto :goto_2

    .line 13
    :cond_6
    check-cast v7, Ljava/util/List;

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v7, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 16
    check-cast v6, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 17
    iget-object v7, v9, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-virtual {v7, v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map(Lcom/im/freechat/shared/entities/message/Attachment;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 18
    :cond_7
    iget-object v5, v9, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v9, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    iput-object v8, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    iput-object v4, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/im/freechat/data/l$p0;->d:Ljava/lang/Object;

    iput-object v6, v2, Lcom/im/freechat/data/l$p0;->e:Ljava/lang/Object;

    iput-boolean v0, v2, Lcom/im/freechat/data/l$p0;->i:Z

    const/4 v6, 0x4

    iput v6, v2, Lcom/im/freechat/data/l$p0;->o:I

    invoke-virtual {v5, v8, v2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insert(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_8

    return-object v3

    :cond_8
    move-object v5, v4

    move-object v6, v8

    move-object v8, v9

    move v4, v0

    .line 19
    :goto_6
    iget-object v0, v8, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    iput-object v8, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    iput-object v6, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/im/freechat/data/l$p0;->i:Z

    const/4 v7, 0x5

    iput v7, v2, Lcom/im/freechat/data/l$p0;->o:I

    invoke-virtual {v0, v5, v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1

    return-object v3

    .line 20
    :goto_7
    :try_start_1
    iput-object v6, v2, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/im/freechat/data/l$p0;->i:Z

    const/4 v7, 0x6

    iput v7, v2, Lcom/im/freechat/data/l$p0;->o:I

    invoke-direct {v6, v5, v0, v2}, Lcom/im/freechat/data/l;->s0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v3, :cond_9

    return-object v3

    .line 21
    :cond_9
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_9
    if-eqz v4, :cond_a

    .line 22
    iget-object v4, v6, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->getMessageId()J

    move-result-wide v5

    iput-object v2, v0, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    iput-object v7, v0, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    const/4 v7, 0x7

    iput v7, v0, Lcom/im/freechat/data/l$p0;->o:I

    invoke-virtual {v4, v5, v6, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->deleteById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    return-object v3

    .line 23
    :cond_a
    iget-object v4, v6, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    sget-object v13, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SEND_FAILED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x7fdf

    const/16 v24, 0x0

    invoke-static/range {v5 .. v24}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;->copy$default(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;ZILjava/lang/Object;)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v5

    iput-object v2, v0, Lcom/im/freechat/data/l$p0;->a:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/im/freechat/data/l$p0;->b:Ljava/lang/Object;

    iput-object v6, v0, Lcom/im/freechat/data/l$p0;->c:Ljava/lang/Object;

    const/16 v6, 0x8

    iput v6, v0, Lcom/im/freechat/data/l$p0;->o:I

    invoke-virtual {v4, v5, v0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->update(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    return-object v3

    .line 24
    :cond_b
    :goto_a
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public R(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p1, Lcom/im/freechat/data/l$b1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/im/freechat/data/l$b1;

    iget v1, v0, Lcom/im/freechat/data/l$b1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$b1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$b1;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/l$b1;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/im/freechat/data/l$b1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$b1;->e:I

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/im/freechat/data/l$b1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Lcom/im/freechat/data/l$b1;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/im/freechat/data/l$b1;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/data/l;->b:Lcom/im/freechat/data/openapigen/api/FriendApi;

    new-instance v2, Lcom/im/freechat/data/l$c1;

    invoke-direct {v2, v7}, Lcom/im/freechat/data/l$c1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$b1;->a:Ljava/lang/Object;

    iput v6, v0, Lcom/im/freechat/data/l$b1;->e:I

    invoke-static {p1, v2, v0}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/GetFriends200Response;

    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/GetFriends200Response;->getData()Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 8
    check-cast v8, Lcom/im/freechat/data/openapigen/models/User;

    .line 9
    iget-object v9, v2, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v9, v8}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/data/openapigen/models/User;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_6
    iget-object p1, v2, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v2, v0, Lcom/im/freechat/data/l$b1;->a:Ljava/lang/Object;

    iput-object v6, v0, Lcom/im/freechat/data/l$b1;->b:Ljava/lang/Object;

    iput v5, v0, Lcom/im/freechat/data/l$b1;->e:I

    invoke-virtual {p1, v6, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdateAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v5, v2

    move-object v2, v6

    .line 11
    :goto_3
    iget-object p1, v5, Lcom/im/freechat/data/l;->p:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    .line 15
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getUserId()I

    move-result v9

    .line 16
    sget-object v13, Lcom/im/freechat/shared/entities/chat/Status;->FRIEND:Lcom/im/freechat/shared/entities/chat/Status;

    .line 17
    new-instance v3, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;-><init>(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 18
    :cond_8
    iput-object v7, v0, Lcom/im/freechat/data/l$b1;->a:Ljava/lang/Object;

    iput-object v7, v0, Lcom/im/freechat/data/l$b1;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/l$b1;->e:I

    invoke-virtual {p1, v5, v0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 19
    :cond_9
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public S(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public T(IJLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p5, Lcom/im/freechat/data/l$v;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/im/freechat/data/l$v;

    iget v1, v0, Lcom/im/freechat/data/l$v;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$v;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$v;

    invoke-direct {v0, p0, p5}, Lcom/im/freechat/data/l$v;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/im/freechat/data/l$v;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$v;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p2, v0, Lcom/im/freechat/data/l$v;->c:J

    iget-object p1, v0, Lcom/im/freechat/data/l$v;->b:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Ljava/lang/String;

    iget-object p1, v0, Lcom/im/freechat/data/l$v;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/l;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p5, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v2, Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;-><init>(IJLjava/lang/String;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$v;->a:Ljava/lang/Object;

    iput-object p4, v0, Lcom/im/freechat/data/l$v;->b:Ljava/lang/Object;

    iput-wide p2, v0, Lcom/im/freechat/data/l$v;->c:J

    iput v3, v0, Lcom/im/freechat/data/l$v;->f:I

    invoke-interface {p5, v2, v0}, Lcom/im/freechat/data/openapigen/api/MessageApi;->editMessageCaption(Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    move-wide v1, p2

    move-object v3, p4

    .line 5
    iget-object v0, p1, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->modifyMessage$default(Lcom/im/freechat/data/sources/database/entities/message/MessageDao;JLjava/lang/String;JILjava/lang/Object;)V

    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public U(IILjava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p1, Lcom/im/freechat/data/l$z0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/im/freechat/data/l$z0;

    iget v1, v0, Lcom/im/freechat/data/l$z0;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$z0;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$z0;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/l$z0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/im/freechat/data/l$z0;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$z0;->h:I

    const/16 v3, 0xa

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/im/freechat/data/l$z0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Lcom/im/freechat/data/l$z0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Lcom/im/freechat/data/l$z0;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v7, v0, Lcom/im/freechat/data/l$z0;->d:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/data/openapigen/models/FriendRequest;

    iget-object v9, v0, Lcom/im/freechat/data/l$z0;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v0, Lcom/im/freechat/data/l$z0;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    iget-object v11, v0, Lcom/im/freechat/data/l$z0;->a:Ljava/lang/Object;

    check-cast v11, Lcom/im/freechat/data/l;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v11

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/im/freechat/data/l$z0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/data/l;->b:Lcom/im/freechat/data/openapigen/api/FriendApi;

    new-instance v2, Lcom/im/freechat/data/l$a1;

    invoke-direct {v2, p0, v8}, Lcom/im/freechat/data/l$a1;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$z0;->a:Ljava/lang/Object;

    iput v7, v0, Lcom/im/freechat/data/l$z0;->h:I

    invoke-static {p1, v2, v0}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/GetSentFriendRequests200Response;

    if-eqz p1, :cond_b

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/data/openapigen/models/GetSentFriendRequests200Response;->getData()Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v9, p1

    move-object p1, v2

    move-object v2, v7

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 8
    check-cast v7, Lcom/im/freechat/data/openapigen/models/FriendRequest;

    .line 9
    iget-object v10, p1, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iget-object v11, p1, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v7}, Lcom/im/freechat/data/openapigen/models/FriendRequest;->getUser()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/data/openapigen/models/User;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-result-object v11

    iput-object p1, v0, Lcom/im/freechat/data/l$z0;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/im/freechat/data/l$z0;->b:Ljava/lang/Object;

    iput-object v9, v0, Lcom/im/freechat/data/l$z0;->c:Ljava/lang/Object;

    iput-object v7, v0, Lcom/im/freechat/data/l$z0;->d:Ljava/lang/Object;

    iput-object v2, v0, Lcom/im/freechat/data/l$z0;->e:Ljava/lang/Object;

    iput v6, v0, Lcom/im/freechat/data/l$z0;->h:I

    invoke-virtual {v10, v11, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_7

    return-object v1

    :cond_7
    move-object v10, v2

    .line 10
    :goto_3
    iget-object v11, p1, Lcom/im/freechat/data/l;->r:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;

    invoke-virtual {v11, v7}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;->map(Lcom/im/freechat/data/openapigen/models/FriendRequest;)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v10

    goto :goto_2

    .line 11
    :cond_8
    check-cast v2, Ljava/util/List;

    .line 12
    iget-object v6, p1, Lcom/im/freechat/data/l;->p:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    iput-object p1, v0, Lcom/im/freechat/data/l$z0;->a:Ljava/lang/Object;

    iput-object v2, v0, Lcom/im/freechat/data/l$z0;->b:Ljava/lang/Object;

    iput-object v8, v0, Lcom/im/freechat/data/l$z0;->c:Ljava/lang/Object;

    iput-object v8, v0, Lcom/im/freechat/data/l$z0;->d:Ljava/lang/Object;

    iput-object v8, v0, Lcom/im/freechat/data/l$z0;->e:Ljava/lang/Object;

    iput v5, v0, Lcom/im/freechat/data/l$z0;->h:I

    invoke-virtual {v6, v2, v0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_9

    return-object v1

    :cond_9
    move-object v5, p1

    .line 13
    :goto_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    .line 16
    invoke-virtual {v3}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;->getUserId()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 17
    :cond_a
    iget-object v2, v5, Lcom/im/freechat/data/l;->p:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    iput-object v8, v0, Lcom/im/freechat/data/l$z0;->a:Ljava/lang/Object;

    iput-object v8, v0, Lcom/im/freechat/data/l$z0;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/l$z0;->h:I

    invoke-virtual {v2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->deleteIrrelevantChatRequests(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    .line 18
    :cond_b
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/l;->c:Lcom/im/freechat/data/openapigen/api/UserApi;

    new-instance v1, Lcom/im/freechat/data/l$s;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/im/freechat/data/l$s;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public c(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/l$v0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/l$v0;

    iget v1, v0, Lcom/im/freechat/data/l$v0;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$v0;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$v0;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/l$v0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/l$v0;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$v0;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Lcom/im/freechat/data/l$v0;->d:I

    iget p2, v0, Lcom/im/freechat/data/l$v0;->c:I

    iget-object v2, v0, Lcom/im/freechat/data/l$v0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/openapigen/models/GetChat200Response;

    iget-object v4, v0, Lcom/im/freechat/data/l$v0;->a:Ljava/lang/Object;

    check-cast v4, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p2, v0, Lcom/im/freechat/data/l$v0;->d:I

    iget p1, v0, Lcom/im/freechat/data/l$v0;->c:I

    iget-object v2, v0, Lcom/im/freechat/data/l$v0;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->a:Lcom/im/freechat/data/openapigen/api/ChatApi;

    new-instance v2, Lcom/im/freechat/data/l$w0;

    invoke-direct {v2, p2, v6}, Lcom/im/freechat/data/l$w0;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$v0;->a:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$v0;->c:I

    iput p2, v0, Lcom/im/freechat/data/l$v0;->d:I

    iput v5, v0, Lcom/im/freechat/data/l$v0;->g:I

    invoke-static {p3, v2, v0}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p3, Lcom/im/freechat/data/openapigen/models/GetChat200Response;

    .line 6
    invoke-virtual {p3}, Lcom/im/freechat/data/openapigen/models/GetChat200Response;->getData()Lcom/im/freechat/data/openapigen/models/Chat;

    move-result-object v5

    iput-object v2, v0, Lcom/im/freechat/data/l$v0;->a:Ljava/lang/Object;

    iput-object p3, v0, Lcom/im/freechat/data/l$v0;->b:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$v0;->c:I

    iput p2, v0, Lcom/im/freechat/data/l$v0;->d:I

    iput v4, v0, Lcom/im/freechat/data/l$v0;->g:I

    invoke-direct {v2, v5, p1, v0}, Lcom/im/freechat/data/l;->m0(Lcom/im/freechat/data/openapigen/models/Chat;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v4, v2

    move-object v2, p3

    move v7, p2

    move p2, p1

    move p1, v7

    .line 7
    :goto_2
    new-instance p3, Lkotlin/Pair;

    invoke-virtual {v2}, Lcom/im/freechat/data/openapigen/models/GetChat200Response;->getData()Lcom/im/freechat/data/openapigen/models/Chat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/im/freechat/data/openapigen/models/Chat;->getLastReadMessageId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Lcom/im/freechat/data/openapigen/models/GetChat200Response;->getData()Lcom/im/freechat/data/openapigen/models/Chat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/data/openapigen/models/Chat;->getOpponentLastReadMessageId()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p3, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v0, Lcom/im/freechat/data/l$v0;->a:Ljava/lang/Object;

    iput-object v6, v0, Lcom/im/freechat/data/l$v0;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/l$v0;->g:I

    invoke-virtual {v4, p2, p1, p3, v0}, Lcom/im/freechat/data/l;->n(IILkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 8
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getUser(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/l$q;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/l$q;

    iget v1, v0, Lcom/im/freechat/data/l$q;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$q;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$q;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/l$q;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/l$q;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$q;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/im/freechat/data/l$q;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    iget-object v2, p0, Lcom/im/freechat/data/l;->c:Lcom/im/freechat/data/openapigen/api/UserApi;

    new-instance v4, Lcom/im/freechat/data/l$r;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/im/freechat/data/l$r;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lcom/im/freechat/data/l$q;->a:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/l$q;->d:I

    invoke-static {v2, v4, v0}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_1
    check-cast p2, Lcom/im/freechat/data/openapigen/models/GetUser200Response;

    invoke-virtual {p2}, Lcom/im/freechat/data/openapigen/models/GetUser200Response;->getData()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->mapUserModel(Lcom/im/freechat/data/openapigen/models/User;)Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object p1

    return-object p1
.end method

.method public h()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/l;->t:Lkotlinx/coroutines/flow/t;

    return-object v0
.end method

.method public i(Lcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/shared/entities/message/Message;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/l$y;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/l$y;

    iget v1, v0, Lcom/im/freechat/data/l$y;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$y;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$y;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/l$y;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/l$y;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$y;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/l$y;->b:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/shared/entities/message/Message;

    iget-object v2, v0, Lcom/im/freechat/data/l$y;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v2, Lcom/im/freechat/data/l$z;

    invoke-direct {v2, p1, v5}, Lcom/im/freechat/data/l$z;-><init>(Lcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$y;->a:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/l$y;->b:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/l$y;->e:I

    invoke-static {p2, v2, v0}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    .line 6
    iget-object p2, v2, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v2

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/Sender;->getUserId()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object v5, v0, Lcom/im/freechat/data/l$y;->a:Ljava/lang/Object;

    iput-object v5, v0, Lcom/im/freechat/data/l$y;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/l$y;->e:I

    invoke-virtual {p2, v2, v4, p1, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->pinMessage(ILjava/lang/Long;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public j(IILjava/lang/String;IILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 36
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lcom/im/freechat/data/l$j0;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/data/l$j0;

    iget v3, v2, Lcom/im/freechat/data/l$j0;->l:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/im/freechat/data/l$j0;->l:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/im/freechat/data/l$j0;

    invoke-direct {v2, v0, v1}, Lcom/im/freechat/data/l$j0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/im/freechat/data/l$j0;->j:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 1
    iget v3, v2, Lcom/im/freechat/data/l$j0;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    iget-wide v3, v2, Lcom/im/freechat/data/l$j0;->i:J

    iget v5, v2, Lcom/im/freechat/data/l$j0;->e:I

    iget-object v6, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_2
    iget-wide v3, v2, Lcom/im/freechat/data/l$j0;->i:J

    iget v5, v2, Lcom/im/freechat/data/l$j0;->e:I

    iget-object v6, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iget-object v7, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v6

    move-object v6, v7

    goto/16 :goto_7

    :pswitch_3
    iget-wide v6, v2, Lcom/im/freechat/data/l$j0;->i:J

    iget v3, v2, Lcom/im/freechat/data/l$j0;->e:I

    iget-object v8, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    check-cast v8, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iget-object v9, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v12, v3

    move-wide v4, v6

    move-object v13, v8

    move-object v14, v9

    goto/16 :goto_5

    :pswitch_4
    iget-wide v6, v2, Lcom/im/freechat/data/l$j0;->i:J

    iget v3, v2, Lcom/im/freechat/data/l$j0;->g:I

    iget v8, v2, Lcom/im/freechat/data/l$j0;->f:I

    iget v9, v2, Lcom/im/freechat/data/l$j0;->e:I

    iget-object v10, v2, Lcom/im/freechat/data/l$j0;->d:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iget-object v13, v2, Lcom/im/freechat/data/l$j0;->c:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    iget-object v14, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move/from16 v20, v3

    move/from16 v19, v8

    move v3, v9

    move-object/from16 v22, v13

    move-object/from16 v21, v14

    move-object v9, v15

    goto/16 :goto_4

    :pswitch_5
    iget-wide v6, v2, Lcom/im/freechat/data/l$j0;->i:J

    iget v3, v2, Lcom/im/freechat/data/l$j0;->g:I

    iget v8, v2, Lcom/im/freechat/data/l$j0;->f:I

    iget v9, v2, Lcom/im/freechat/data/l$j0;->e:I

    iget-object v10, v2, Lcom/im/freechat/data/l$j0;->d:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iget-object v13, v2, Lcom/im/freechat/data/l$j0;->c:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    iget-object v14, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_6
    iget-wide v6, v2, Lcom/im/freechat/data/l$j0;->i:J

    iget v3, v2, Lcom/im/freechat/data/l$j0;->g:I

    iget v8, v2, Lcom/im/freechat/data/l$j0;->f:I

    iget v9, v2, Lcom/im/freechat/data/l$j0;->e:I

    iget-object v10, v2, Lcom/im/freechat/data/l$j0;->d:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    iget-object v13, v2, Lcom/im/freechat/data/l$j0;->c:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    iget-object v14, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v33, v14

    move-object v14, v13

    move-object v13, v15

    move-object/from16 v15, v33

    goto/16 :goto_2

    :pswitch_7
    iget v3, v2, Lcom/im/freechat/data/l$j0;->h:I

    iget v6, v2, Lcom/im/freechat/data/l$j0;->g:I

    iget v7, v2, Lcom/im/freechat/data/l$j0;->f:I

    iget v8, v2, Lcom/im/freechat/data/l$j0;->e:I

    iget-object v9, v2, Lcom/im/freechat/data/l$j0;->c:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    iget-object v10, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v13, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    check-cast v13, Lcom/im/freechat/data/l;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v16, v8

    move v8, v6

    move-object v6, v13

    move-object/from16 v33, v9

    move v9, v3

    move-object/from16 v3, v33

    goto :goto_1

    :pswitch_8
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object v0, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    move-object/from16 v1, p3

    iput-object v1, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    move-object/from16 v3, p6

    iput-object v3, v2, Lcom/im/freechat/data/l$j0;->c:Ljava/lang/Object;

    move/from16 v6, p1

    iput v6, v2, Lcom/im/freechat/data/l$j0;->e:I

    move/from16 v7, p2

    iput v7, v2, Lcom/im/freechat/data/l$j0;->f:I

    move/from16 v8, p4

    iput v8, v2, Lcom/im/freechat/data/l$j0;->g:I

    move/from16 v9, p5

    iput v9, v2, Lcom/im/freechat/data/l$j0;->h:I

    iput v5, v2, Lcom/im/freechat/data/l$j0;->l:I

    invoke-direct {v0, v4, v2}, Lcom/im/freechat/data/l;->n0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v11, :cond_2

    return-object v11

    :cond_2
    move/from16 v16, v6

    move-object v6, v0

    move-object/from16 v33, v10

    move-object v10, v1

    move-object/from16 v1, v33

    :goto_1
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    move-wide/from16 p1, v13

    move-wide/from16 v14, p1

    .line 5
    iget-object v1, v6, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    invoke-static {v1, v4, v5, v12}, Lcom/im/freechat/domain/q$a;->a(Lcom/im/freechat/domain/q;ZILjava/lang/Object;)J

    move-result-wide v19

    .line 6
    sget-object v21, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SENDING:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    .line 7
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v28

    .line 8
    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object v13, v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x63c0

    const/16 v32, 0x0

    const-string v17, ""

    move/from16 v18, v7

    move-object/from16 v26, v3

    invoke-direct/range {v13 .. v32}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iput-object v6, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    iput-object v10, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    iput-object v3, v2, Lcom/im/freechat/data/l$j0;->c:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/data/l$j0;->d:Ljava/lang/Object;

    iput v7, v2, Lcom/im/freechat/data/l$j0;->e:I

    iput v8, v2, Lcom/im/freechat/data/l$j0;->f:I

    iput v9, v2, Lcom/im/freechat/data/l$j0;->g:I

    move-wide/from16 v13, p1

    iput-wide v13, v2, Lcom/im/freechat/data/l$j0;->i:J

    const/4 v15, 0x2

    iput v15, v2, Lcom/im/freechat/data/l$j0;->l:I

    invoke-direct {v6, v5, v2}, Lcom/im/freechat/data/l;->n0(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v11, :cond_3

    return-object v11

    :cond_3
    move-object/from16 v33, v10

    move-object v10, v1

    move-object v1, v15

    move-object/from16 v15, v33

    move-wide/from16 v34, v13

    move-object v14, v3

    move-object v13, v6

    move v3, v9

    move v9, v7

    move-wide/from16 v6, v34

    :goto_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    .line 10
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v15, v1, v4

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "https://media.giphy.com/media/%s/giphy.gif"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "format(format, *args)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v4, Lcom/im/freechat/shared/entities/message/GifAttachment;

    const/16 v18, 0x0

    move-object v5, v13

    move-object v13, v4

    move-object v12, v14

    move-object/from16 p1, v15

    move-wide/from16 v14, v16

    move-wide/from16 v16, v6

    move-object/from16 v19, v1

    move-object/from16 v20, p1

    move-object/from16 v21, p1

    move/from16 v22, v8

    move/from16 v23, v3

    invoke-direct/range {v13 .. v23}, Lcom/im/freechat/shared/entities/message/GifAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 12
    iget-object v1, v5, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-virtual {v1, v4}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map(Lcom/im/freechat/shared/entities/message/Attachment;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-result-object v1

    .line 13
    iget-object v4, v5, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v5, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    move-object/from16 v14, p1

    iput-object v14, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    iput-object v12, v2, Lcom/im/freechat/data/l$j0;->c:Ljava/lang/Object;

    iput-object v1, v2, Lcom/im/freechat/data/l$j0;->d:Ljava/lang/Object;

    iput v9, v2, Lcom/im/freechat/data/l$j0;->e:I

    iput v8, v2, Lcom/im/freechat/data/l$j0;->f:I

    iput v3, v2, Lcom/im/freechat/data/l$j0;->g:I

    iput-wide v6, v2, Lcom/im/freechat/data/l$j0;->i:J

    const/4 v13, 0x3

    iput v13, v2, Lcom/im/freechat/data/l$j0;->l:I

    invoke-virtual {v4, v10, v2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insert(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v11, :cond_4

    return-object v11

    :cond_4
    move-object v10, v1

    move-object v15, v5

    move-object v13, v12

    .line 14
    :goto_3
    iget-object v1, v15, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    iput-object v15, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    iput-object v14, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$j0;->c:Ljava/lang/Object;

    iput-object v10, v2, Lcom/im/freechat/data/l$j0;->d:Ljava/lang/Object;

    iput v9, v2, Lcom/im/freechat/data/l$j0;->e:I

    iput v8, v2, Lcom/im/freechat/data/l$j0;->f:I

    iput v3, v2, Lcom/im/freechat/data/l$j0;->g:I

    iput-wide v6, v2, Lcom/im/freechat/data/l$j0;->i:J

    const/4 v4, 0x4

    iput v4, v2, Lcom/im/freechat/data/l$j0;->l:I

    invoke-virtual {v1, v10, v2}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insert(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_1

    return-object v11

    .line 15
    :goto_4
    iget-object v1, v9, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v4, Lcom/im/freechat/data/l$k0;

    const/16 v23, 0x0

    move-object/from16 v16, v4

    move/from16 v17, v3

    move-object/from16 v18, v10

    invoke-direct/range {v16 .. v23}, Lcom/im/freechat/data/l$k0;-><init>(ILcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;IILjava/lang/String;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    iput-object v9, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    iput-object v10, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/im/freechat/data/l$j0;->c:Ljava/lang/Object;

    iput-object v5, v2, Lcom/im/freechat/data/l$j0;->d:Ljava/lang/Object;

    iput v3, v2, Lcom/im/freechat/data/l$j0;->e:I

    iput-wide v6, v2, Lcom/im/freechat/data/l$j0;->i:J

    const/4 v5, 0x5

    iput v5, v2, Lcom/im/freechat/data/l$j0;->l:I

    invoke-static {v1, v4, v2}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_5

    return-object v11

    :cond_5
    move v12, v3

    move-wide v4, v6

    move-object v14, v9

    move-object v13, v10

    .line 16
    :goto_5
    check-cast v1, Lcom/im/freechat/data/openapigen/models/SendText200Response;

    if-eqz v1, :cond_6

    .line 17
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/SendText200Response;->getData()J

    move-result-wide v6

    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 18
    iget-object v3, v14, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    .line 19
    iget-object v1, v14, Lcom/im/freechat/data/l;->i:Lcom/im/freechat/domain/q;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-static {v1, v6, v7, v10}, Lcom/im/freechat/domain/q$a;->a(Lcom/im/freechat/domain/q;ZILjava/lang/Object;)J

    move-result-wide v15

    .line 20
    iput-object v14, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    iput-object v13, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    iput v12, v2, Lcom/im/freechat/data/l$j0;->e:I

    iput-wide v8, v2, Lcom/im/freechat/data/l$j0;->i:J

    const/4 v1, 0x6

    iput v1, v2, Lcom/im/freechat/data/l$j0;->l:I

    move-wide v6, v8

    move-wide/from16 v17, v8

    move-wide v8, v15

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setMessageId(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_7

    return-object v11

    :cond_7
    move v5, v12

    move-object v6, v14

    move-wide/from16 v3, v17

    .line 21
    :goto_7
    iget-object v1, v6, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    .line 22
    invoke-virtual {v13}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v7

    .line 23
    iget-object v9, v6, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    invoke-virtual {v13}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getRemoteUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v10, v3, v4}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->getMediaId(Ljava/lang/String;J)J

    move-result-wide v9

    .line 24
    iput-object v6, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-object v12, v2, Lcom/im/freechat/data/l$j0;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/im/freechat/data/l$j0;->e:I

    iput-wide v3, v2, Lcom/im/freechat/data/l$j0;->i:J

    const/4 v12, 0x7

    iput v12, v2, Lcom/im/freechat/data/l$j0;->l:I

    move-object/from16 p1, v1

    move-wide/from16 p2, v7

    move-wide/from16 p4, v9

    move-object/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->setAttachmentId(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_8

    return-object v11

    .line 25
    :cond_8
    :goto_8
    iget-object v1, v6, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/im/freechat/data/l$j0;->a:Ljava/lang/Object;

    const/16 v4, 0x8

    iput v4, v2, Lcom/im/freechat/data/l$j0;->l:I

    invoke-virtual {v1, v5, v3, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->updateLastMessageId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_9

    return-object v11

    .line 26
    :cond_9
    :goto_9
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(IJLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public l(ILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p2    # Lcom/im/freechat/shared/entities/message/Message;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/im/freechat/shared/entities/message/Message;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p3, Lcom/im/freechat/data/l$a0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/im/freechat/data/l$a0;

    iget v1, v0, Lcom/im/freechat/data/l$a0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$a0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$a0;

    invoke-direct {v0, p0, p3}, Lcom/im/freechat/data/l$a0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/im/freechat/data/l$a0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 1
    iget v1, v0, Lcom/im/freechat/data/l$a0;->f:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    if-eq v1, v9, :cond_2

    if-ne v1, v8, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/l$a0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/shared/entities/message/Message;

    iget-object p2, v0, Lcom/im/freechat/data/l$a0;->a:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget p1, v0, Lcom/im/freechat/data/l$a0;->c:I

    iget-object p2, v0, Lcom/im/freechat/data/l$a0;->b:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/shared/entities/message/Message;

    iget-object v1, v0, Lcom/im/freechat/data/l$a0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget p1, v0, Lcom/im/freechat/data/l$a0;->c:I

    iget-object p2, v0, Lcom/im/freechat/data/l$a0;->b:Ljava/lang/Object;

    check-cast p2, Lcom/im/freechat/shared/entities/message/Message;

    iget-object v1, v0, Lcom/im/freechat/data/l$a0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v1

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v1, Lcom/im/freechat/data/l$b0;

    invoke-direct {v1, p2, v10}, Lcom/im/freechat/data/l$b0;-><init>(Lcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$a0;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/l$a0;->b:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$a0;->c:I

    iput v3, v0, Lcom/im/freechat/data/l$a0;->f:I

    invoke-static {p3, v1, v0}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v7, :cond_6

    return-object v7

    :cond_6
    move-object v11, p0

    :goto_1
    check-cast p3, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    if-eqz p3, :cond_9

    .line 5
    iget-object v1, v11, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v3

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v4

    iput-object v11, v0, Lcom/im/freechat/data/l$a0;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/l$a0;->b:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$a0;->c:I

    iput v2, v0, Lcom/im/freechat/data/l$a0;->f:I

    move v2, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->readOtherMessages(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v7, :cond_7

    return-object v7

    :cond_7
    move-object v1, v11

    .line 6
    :goto_2
    check-cast p3, Ljava/util/List;

    .line 7
    iget-object v2, v1, Lcom/im/freechat/data/l;->j:Lcom/im/freechat/domain/n;

    invoke-interface {v2, p3}, Lcom/im/freechat/domain/n;->c(Ljava/util/List;)V

    .line 8
    iget-object p3, v1, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v2

    iput-object v1, v0, Lcom/im/freechat/data/l$a0;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/im/freechat/data/l$a0;->b:Ljava/lang/Object;

    iput v9, v0, Lcom/im/freechat/data/l$a0;->f:I

    invoke-virtual {p3, p1, v2, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getOthersUnreadMessageCount(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v7, :cond_8

    return-object v7

    :cond_8
    move-object p1, p2

    move-object p2, v1

    :goto_3
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 9
    iget-object p2, p2, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result p1

    iput-object v10, v0, Lcom/im/freechat/data/l$a0;->a:Ljava/lang/Object;

    iput-object v10, v0, Lcom/im/freechat/data/l$a0;->b:Ljava/lang/Object;

    iput v8, v0, Lcom/im/freechat/data/l$a0;->f:I

    invoke-virtual {p2, p1, p3, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->updateUnreadCount(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_9

    return-object v7

    .line 10
    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public m(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(IILkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .param p3    # Lkotlin/Pair;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    instance-of v3, v2, Lcom/im/freechat/data/l$h1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/data/l$h1;

    iget v4, v3, Lcom/im/freechat/data/l$h1;->n:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/im/freechat/data/l$h1;->n:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/im/freechat/data/l$h1;

    invoke-direct {v3, v0, v2}, Lcom/im/freechat/data/l$h1;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/im/freechat/data/l$h1;->l:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 1
    iget v5, v3, Lcom/im/freechat/data/l$h1;->n:I

    const/4 v8, 0x1

    packed-switch v5, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    iget v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iget-object v9, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    iget-object v12, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    check-cast v14, Lkotlin/Pair;

    iget-object v15, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v9

    move-object v9, v11

    move-object v11, v13

    move-object v13, v15

    const/4 v7, 0x0

    goto/16 :goto_10

    :pswitch_1
    iget v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    iget v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iget-object v9, v3, Lcom/im/freechat/data/l$h1;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    iget-object v13, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v15, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    check-cast v15, Lkotlin/Pair;

    iget-object v6, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v6

    goto/16 :goto_f

    :pswitch_2
    iget v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    iget v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iget-object v6, v3, Lcom/im/freechat/data/l$h1;->h:Ljava/lang/Object;

    check-cast v6, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;

    iget-object v9, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    iget-object v12, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    check-cast v14, Lkotlin/Pair;

    iget-object v15, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    check-cast v15, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    iget v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    iget v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iget-object v6, v3, Lcom/im/freechat/data/l$h1;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v9, v3, Lcom/im/freechat/data/l$h1;->h:Ljava/lang/Object;

    check-cast v9, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;

    iget-object v10, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    iget-object v13, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v15, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    check-cast v15, Lkotlin/Pair;

    iget-object v7, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    check-cast v7, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v7

    goto/16 :goto_8

    :pswitch_4
    iget v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    iget v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iget-object v6, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    iget-object v10, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v12, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    check-cast v12, Lkotlin/Pair;

    iget-object v13, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    check-cast v13, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    iget v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    iget v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iget-object v6, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v9, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    check-cast v9, Lkotlin/Pair;

    iget-object v10, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    check-cast v10, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, v0, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object v0, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    move-object/from16 v5, p3

    iput-object v5, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    iput-object v7, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    iput-object v6, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    move/from16 v9, p1

    iput v9, v3, Lcom/im/freechat/data/l$h1;->j:I

    iput v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    iput v8, v3, Lcom/im/freechat/data/l$h1;->n:I

    invoke-virtual {v2, v1, v3}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getLastSyncMessageId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1

    return-object v4

    :cond_1
    move-object v10, v0

    move/from16 v19, v9

    move-object v9, v5

    move/from16 v5, v19

    .line 7
    :goto_1
    check-cast v2, Ljava/lang/Long;

    .line 8
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v10

    move-object v10, v6

    move-object v6, v12

    move-object v12, v9

    move-object v9, v2

    move-object/from16 v19, v11

    move-object v11, v7

    move-object/from16 v7, v19

    .line 10
    :goto_2
    iget-object v2, v13, Lcom/im/freechat/data/l;->d:Lcom/im/freechat/data/openapigen/api/MessageApi;

    new-instance v14, Lcom/im/freechat/data/l$i1;

    const/4 v15, 0x0

    invoke-direct {v14, v11, v1, v15}, Lcom/im/freechat/data/l$i1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/coroutines/Continuation;)V

    iput-object v13, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    iput-object v12, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    iput-object v11, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    iput-object v7, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    iput-object v6, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    iput v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iput v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    const/4 v15, 0x2

    iput v15, v3, Lcom/im/freechat/data/l$h1;->n:I

    invoke-static {v2, v14, v3}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_2

    return-object v4

    .line 11
    :cond_2
    :goto_3
    check-cast v2, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;

    .line 12
    invoke-virtual {v2}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;->getData()Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;

    move-result-object v2

    .line 13
    iget v14, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v14, v8, :cond_4

    invoke-virtual {v2}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;->getList()Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/im/freechat/data/openapigen/models/Message;

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    :goto_4
    iput-object v14, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    :cond_4
    invoke-virtual {v2}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;->getList()Ljava/util/List;

    move-result-object v14

    .line 15
    new-instance v15, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v14, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 17
    check-cast v8, Lcom/im/freechat/data/openapigen/models/Message;

    .line 18
    iget-object v14, v13, Lcom/im/freechat/data/l;->q:Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    move-object/from16 p1, v0

    .line 19
    invoke-virtual {v8}, Lcom/im/freechat/data/openapigen/models/Message;->getSenderId()I

    move-result v0

    if-eq v0, v5, :cond_5

    .line 20
    invoke-virtual {v12}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_5
    invoke-virtual {v12}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    :goto_6
    check-cast v0, Ljava/lang/Long;

    .line 21
    invoke-virtual {v14, v8, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->mapToEntityAndAttachment(Lcom/im/freechat/data/openapigen/models/Message;Ljava/lang/Long;)Lkotlin/Pair;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    goto :goto_5

    .line 22
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 24
    check-cast v14, Lkotlin/Pair;

    .line 25
    invoke-virtual {v14}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    if-eqz v14, :cond_7

    .line 26
    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 27
    :cond_8
    iget-object v8, v13, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v13, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    iput-object v12, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    iput-object v11, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    iput-object v7, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    iput-object v6, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    iput-object v2, v3, Lcom/im/freechat/data/l$h1;->h:Ljava/lang/Object;

    iput-object v15, v3, Lcom/im/freechat/data/l$h1;->i:Ljava/lang/Object;

    iput v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iput v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    const/4 v14, 0x3

    iput v14, v3, Lcom/im/freechat/data/l$h1;->n:I

    invoke-virtual {v8, v0, v3}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    return-object v4

    :cond_9
    move-object v14, v12

    move-object v12, v10

    move-object v10, v7

    move-object/from16 v19, v9

    move-object v9, v6

    move-object v6, v15

    move-object v15, v13

    move-object v13, v11

    move-object/from16 v11, v19

    .line 28
    :goto_8
    iget-object v0, v15, Lcom/im/freechat/data/l;->o:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 31
    check-cast v8, Lkotlin/Pair;

    .line 32
    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 33
    :cond_a
    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_9

    .line 34
    :cond_b
    iput-object v15, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    iput-object v14, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    iput-object v13, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    iput-object v12, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    iput-object v11, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    iput-object v2, v3, Lcom/im/freechat/data/l$h1;->h:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/im/freechat/data/l$h1;->i:Ljava/lang/Object;

    iput v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iput v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    const/4 v6, 0x4

    iput v6, v3, Lcom/im/freechat/data/l$h1;->n:I

    invoke-virtual {v0, v7, v3}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insert(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_c

    return-object v4

    :cond_c
    move-object v6, v2

    .line 35
    :goto_a
    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;->getList()Ljava/util/List;

    move-result-object v0

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 38
    check-cast v7, Lcom/im/freechat/data/openapigen/models/Message;

    .line 39
    invoke-virtual {v7}, Lcom/im/freechat/data/openapigen/models/Message;->getForwardSender()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 40
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 41
    :cond_e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/data/openapigen/models/User;

    .line 42
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 43
    :cond_f
    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;->getList()Ljava/util/List;

    move-result-object v0

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 46
    check-cast v8, Lcom/im/freechat/data/openapigen/models/Message;

    .line 47
    invoke-virtual {v8}, Lcom/im/freechat/data/openapigen/models/Message;->getId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 48
    :cond_10
    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;->getPage()I

    move-result v0

    invoke-virtual {v6}, Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200ResponseData;->getTotal()I

    move-result v6

    if-ge v0, v6, :cond_17

    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_11

    .line 50
    :cond_11
    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 54
    move-object/from16 v17, v2

    check-cast v17, Lcom/im/freechat/data/openapigen/models/User;

    .line 55
    invoke-virtual/range {v17 .. v17}, Lcom/im/freechat/data/openapigen/models/User;->getId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    .line 56
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 57
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    const/4 v2, 0x1

    const/16 v7, 0xa

    goto :goto_e

    .line 58
    :cond_13
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v19, v9

    move-object v9, v0

    move-object/from16 v0, v19

    :cond_14
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/data/openapigen/models/User;

    .line 59
    iget-object v6, v15, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {v6, v2, v5}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/data/openapigen/models/User;I)Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;

    move-result-object v2

    .line 60
    iget-object v6, v15, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v15, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    iput-object v14, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    iput-object v13, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    iput-object v12, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    iput-object v11, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    iput-object v0, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    iput-object v9, v3, Lcom/im/freechat/data/l$h1;->h:Ljava/lang/Object;

    iput v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iput v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    const/4 v7, 0x5

    iput v7, v3, Lcom/im/freechat/data/l$h1;->n:I

    invoke-virtual {v6, v2, v3}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_14

    return-object v4

    .line 61
    :cond_15
    iget-object v2, v15, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iget-object v6, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    iput-object v15, v3, Lcom/im/freechat/data/l$h1;->a:Ljava/lang/Object;

    iput-object v14, v3, Lcom/im/freechat/data/l$h1;->b:Ljava/lang/Object;

    iput-object v13, v3, Lcom/im/freechat/data/l$h1;->c:Ljava/lang/Object;

    iput-object v12, v3, Lcom/im/freechat/data/l$h1;->d:Ljava/lang/Object;

    iput-object v11, v3, Lcom/im/freechat/data/l$h1;->e:Ljava/lang/Object;

    iput-object v10, v3, Lcom/im/freechat/data/l$h1;->f:Ljava/lang/Object;

    iput-object v0, v3, Lcom/im/freechat/data/l$h1;->g:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v3, Lcom/im/freechat/data/l$h1;->h:Ljava/lang/Object;

    iput v5, v3, Lcom/im/freechat/data/l$h1;->j:I

    iput v1, v3, Lcom/im/freechat/data/l$h1;->k:I

    const/4 v8, 0x6

    iput v8, v3, Lcom/im/freechat/data/l$h1;->n:I

    invoke-virtual {v2, v1, v6, v3}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->updateLastSyncMessageId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_16

    return-object v4

    :cond_16
    move-object v6, v0

    move-object v9, v11

    move-object v11, v13

    move-object v13, v15

    :goto_10
    move-object/from16 v0, p0

    move-object v7, v10

    move-object v10, v12

    move-object v12, v14

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 62
    :cond_17
    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of p1, p4, Lcom/im/freechat/data/l$f0;

    if-eqz p1, :cond_0

    move-object p1, p4

    check-cast p1, Lcom/im/freechat/data/l$f0;

    iget v0, p1, Lcom/im/freechat/data/l$f0;->f:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/im/freechat/data/l$f0;->f:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/im/freechat/data/l$f0;

    invoke-direct {p1, p0, p4}, Lcom/im/freechat/data/l$f0;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, p1, Lcom/im/freechat/data/l$f0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p1, Lcom/im/freechat/data/l$f0;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p1, Lcom/im/freechat/data/l$f0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    iget-wide p2, p1, Lcom/im/freechat/data/l$f0;->c:J

    iget-object v1, p1, Lcom/im/freechat/data/l$f0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :cond_3
    iget-wide p2, p1, Lcom/im/freechat/data/l$f0;->c:J

    iget-object v1, p1, Lcom/im/freechat/data/l$f0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    iget-object v5, p1, Lcom/im/freechat/data/l$f0;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p4, v1

    move-object v1, v5

    goto :goto_2

    :catch_0
    move-exception p4

    move-object v1, v5

    goto :goto_4

    :cond_4
    iget-wide p2, p1, Lcom/im/freechat/data/l$f0;->c:J

    iget-object v1, p1, Lcom/im/freechat/data/l$f0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    :try_start_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p4

    goto :goto_4

    :cond_5
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    :try_start_3
    iget-object p4, p0, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object p0, p1, Lcom/im/freechat/data/l$f0;->a:Ljava/lang/Object;

    iput-wide p2, p1, Lcom/im/freechat/data/l$f0;->c:J

    iput v6, p1, Lcom/im/freechat/data/l$f0;->f:I

    invoke-virtual {p4, v1, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->getMessagesByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne p4, v0, :cond_6

    return-object v0

    :cond_6
    move-object v1, p0

    :goto_1
    :try_start_4
    check-cast p4, Ljava/util/List;

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    .line 5
    iget-object v6, v1, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v1, p1, Lcom/im/freechat/data/l$f0;->a:Ljava/lang/Object;

    iput-object p4, p1, Lcom/im/freechat/data/l$f0;->b:Ljava/lang/Object;

    iput-wide p2, p1, Lcom/im/freechat/data/l$f0;->c:J

    iput v5, p1, Lcom/im/freechat/data/l$f0;->f:I

    invoke-virtual {v6, p2, p3, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setMessageSending(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_7

    return-object v0

    .line 6
    :cond_7
    :goto_2
    invoke-virtual {p4}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getMessageEntity()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v5

    .line 7
    invoke-virtual {p4}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;->getAttachments()Ljava/util/List;

    move-result-object p4

    .line 8
    iput-object v1, p1, Lcom/im/freechat/data/l$f0;->a:Ljava/lang/Object;

    iput-object v2, p1, Lcom/im/freechat/data/l$f0;->b:Ljava/lang/Object;

    iput-wide p2, p1, Lcom/im/freechat/data/l$f0;->c:J

    iput v4, p1, Lcom/im/freechat/data/l$f0;->f:I

    invoke-direct {v1, v5, p4, p1}, Lcom/im/freechat/data/l;->s0(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 9
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_2
    move-exception p4

    move-object v1, p0

    .line 10
    :goto_4
    iget-object v1, v1, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object p4, p1, Lcom/im/freechat/data/l$f0;->a:Ljava/lang/Object;

    iput-object v2, p1, Lcom/im/freechat/data/l$f0;->b:Ljava/lang/Object;

    iput v3, p1, Lcom/im/freechat/data/l$f0;->f:I

    invoke-virtual {v1, p2, p3, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setSendFailed(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    move-object p1, p4

    .line 11
    :goto_5
    throw p1
.end method

.method public p(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of p2, p3, Lcom/im/freechat/data/l$c;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/im/freechat/data/l$c;

    iget v0, p2, Lcom/im/freechat/data/l$c;->e:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/im/freechat/data/l$c;->e:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/im/freechat/data/l$c;

    invoke-direct {p2, p0, p3}, Lcom/im/freechat/data/l$c;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p2, Lcom/im/freechat/data/l$c;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p2, Lcom/im/freechat/data/l$c;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, p2, Lcom/im/freechat/data/l$c;->b:I

    iget-object v1, p2, Lcom/im/freechat/data/l$c;->a:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/l;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcom/im/freechat/data/l;->a:Lcom/im/freechat/data/openapigen/api/ChatApi;

    new-instance v1, Lcom/im/freechat/data/l$d;

    invoke-direct {v1, p1, v2}, Lcom/im/freechat/data/l$d;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, p2, Lcom/im/freechat/data/l$c;->a:Ljava/lang/Object;

    iput p1, p2, Lcom/im/freechat/data/l$c;->b:I

    iput v4, p2, Lcom/im/freechat/data/l$c;->e:I

    invoke-static {p3, v1, p2}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p0

    :goto_1
    check-cast p3, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    if-eqz p3, :cond_5

    .line 5
    iget-object p3, v1, Lcom/im/freechat/data/l;->n:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    iput-object v2, p2, Lcom/im/freechat/data/l$c;->a:Ljava/lang/Object;

    iput v3, p2, Lcom/im/freechat/data/l$c;->e:I

    invoke-virtual {p3, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->deleteByChatId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public q(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/im/freechat/data/l$p;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/data/l$p;

    iget v4, v3, Lcom/im/freechat/data/l$p;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/im/freechat/data/l$p;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/im/freechat/data/l$p;

    invoke-direct {v3, v0, v2}, Lcom/im/freechat/data/l$p;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/im/freechat/data/l$p;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 1
    iget v5, v3, Lcom/im/freechat/data/l$p;->e:I

    packed-switch v5, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :pswitch_0
    iget v1, v3, Lcom/im/freechat/data/l$p;->b:I

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget v1, v3, Lcom/im/freechat/data/l$p;->b:I

    iget-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget v1, v3, Lcom/im/freechat/data/l$p;->b:I

    iget-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget v1, v3, Lcom/im/freechat/data/l$p;->b:I

    iget-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    iget v1, v3, Lcom/im/freechat/data/l$p;->b:I

    iget-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_5
    iget v1, v3, Lcom/im/freechat/data/l$p;->b:I

    iget-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    iget v1, v3, Lcom/im/freechat/data/l$p;->b:I

    iget-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    check-cast v5, Lcom/im/freechat/data/l;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    iput-object v0, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/l$p;->b:I

    const/4 v5, 0x1

    iput v5, v3, Lcom/im/freechat/data/l$p;->e:I

    invoke-virtual {v2, v1, v3}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->getChatById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1

    return-object v4

    :cond_1
    move-object v5, v0

    :goto_1
    check-cast v2, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;->getChatEntity()Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;->getId()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 6
    :cond_2
    iget-object v2, v5, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/l$p;->b:I

    const/4 v7, 0x2

    iput v7, v3, Lcom/im/freechat/data/l$p;->e:I

    invoke-virtual {v2, v1, v3}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->getContact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_3

    return-object v4

    .line 7
    :cond_3
    :goto_2
    check-cast v2, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    if-nez v2, :cond_4

    .line 8
    iput-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/l$p;->b:I

    const/4 v2, 0x3

    iput v2, v3, Lcom/im/freechat/data/l$p;->e:I

    invoke-virtual {v5, v1, v3}, Lcom/im/freechat/data/l;->u0(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    .line 9
    :cond_4
    :goto_3
    iget-object v2, v5, Lcom/im/freechat/data/l;->k:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    .line 10
    sget-object v11, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    .line 11
    new-instance v15, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v7, v15

    move v8, v1

    move-object v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v7 .. v19}, Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)V

    .line 12
    iput-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/l$p;->b:I

    const/4 v7, 0x4

    iput v7, v3, Lcom/im/freechat/data/l$p;->e:I

    invoke-virtual {v2, v6, v3}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    .line 13
    :cond_5
    :goto_4
    iget-object v2, v5, Lcom/im/freechat/data/l;->m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    .line 14
    sget-object v6, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v6

    .line 15
    sget-object v8, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;

    invoke-virtual {v8, v7}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v8

    .line 16
    new-instance v7, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-direct {v7, v1, v1, v8, v6}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;-><init>(IILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)V

    .line 17
    iput-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/l$p;->b:I

    const/4 v6, 0x5

    iput v6, v3, Lcom/im/freechat/data/l$p;->e:I

    invoke-virtual {v2, v7, v3}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    return-object v4

    .line 18
    :cond_6
    :goto_5
    iget-object v2, v5, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iput-object v5, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/l$p;->b:I

    const/4 v6, 0x6

    iput v6, v3, Lcom/im/freechat/data/l$p;->e:I

    invoke-virtual {v2, v3}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->getCurrentUser(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_7

    return-object v4

    :cond_7
    :goto_6
    check-cast v2, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    invoke-virtual {v2}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;->getUserId()I

    move-result v2

    .line 19
    iget-object v5, v5, Lcom/im/freechat/data/l;->m:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    .line 20
    sget-object v6, Lcom/im/freechat/shared/entities/chat/ChatMember$Status;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v6

    .line 21
    sget-object v8, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->Companion:Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;

    invoke-virtual {v8, v7}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;->fromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v7

    .line 22
    new-instance v8, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-direct {v8, v2, v1, v7, v6}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;-><init>(IILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)V

    const/4 v2, 0x0

    .line 23
    iput-object v2, v3, Lcom/im/freechat/data/l$p;->a:Ljava/lang/Object;

    iput v1, v3, Lcom/im/freechat/data/l$p;->b:I

    const/4 v2, 0x7

    iput v2, v3, Lcom/im/freechat/data/l$p;->e:I

    invoke-virtual {v5, v8, v3}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_8

    return-object v4

    .line 24
    :cond_8
    :goto_7
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/l$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/l$g;

    iget v1, v0, Lcom/im/freechat/data/l$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$g;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/l$g;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/l$g;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$g;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Lcom/im/freechat/data/l$g;->b:I

    iget-object v2, v0, Lcom/im/freechat/data/l$g;->a:Ljava/lang/Object;

    check-cast v2, Lcom/im/freechat/data/l;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/l;->b:Lcom/im/freechat/data/openapigen/api/FriendApi;

    new-instance v2, Lcom/im/freechat/data/l$h;

    invoke-direct {v2, p1, v3}, Lcom/im/freechat/data/l$h;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$g;->a:Ljava/lang/Object;

    iput p1, v0, Lcom/im/freechat/data/l$g;->b:I

    iput v5, v0, Lcom/im/freechat/data/l$g;->e:I

    invoke-static {p2, v2, v0}, Lcom/im/freechat/data/a;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;

    if-eqz p2, :cond_5

    .line 5
    iget-object p2, v2, Lcom/im/freechat/data/l;->p:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    iput-object v3, v0, Lcom/im/freechat/data/l$g;->a:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/l$g;->e:I

    invoke-virtual {p2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->deleteByUserId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public u(Z)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/l;->t:Lkotlinx/coroutines/flow/t;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final u0(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/l$j1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/l$j1;

    iget v1, v0, Lcom/im/freechat/data/l$j1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/l$j1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/l$j1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/l$j1;-><init>(Lcom/im/freechat/data/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/l$j1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/l$j1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/im/freechat/data/l$j1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/l;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/l;->c:Lcom/im/freechat/data/openapigen/api/UserApi;

    new-instance v2, Lcom/im/freechat/data/l$k1;

    invoke-direct {v2, p1, v3}, Lcom/im/freechat/data/l$k1;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/im/freechat/data/l$j1;->a:Ljava/lang/Object;

    iput v5, v0, Lcom/im/freechat/data/l$j1;->d:I

    invoke-static {p2, v2, v0}, Lcom/im/freechat/data/a;->f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/im/freechat/data/openapigen/models/GetUser200Response;

    .line 6
    iget-object v2, p1, Lcom/im/freechat/data/l;->l:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    iget-object p1, p1, Lcom/im/freechat/data/l;->s:Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;

    invoke-virtual {p2}, Lcom/im/freechat/data/openapigen/models/GetUser200Response;->getData()Lcom/im/freechat/data/openapigen/models/User;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;->map(Lcom/im/freechat/data/openapigen/models/User;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-result-object p1

    iput-object v3, v0, Lcom/im/freechat/data/l$j1;->a:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/l$j1;->d:I

    invoke-virtual {v2, p1, v0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;->insert(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public v(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/l;->t:Lkotlinx/coroutines/flow/t;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/t;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public x(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p4    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Not yet implemented"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
