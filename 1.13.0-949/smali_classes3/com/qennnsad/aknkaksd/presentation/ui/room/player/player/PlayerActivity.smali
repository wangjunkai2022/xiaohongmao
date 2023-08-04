.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PlayerActivity;
.source "PlayerActivity.kt"

# interfaces
.implements Lio/github/rockerhieu/emojicon/f$d;
.implements Lio/github/rockerhieu/emojicon/c$a;
.implements Lcom/qennnsad/aknkaksd/presentation/ui/base/p;
.implements Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PlayerActivity<",
        "Le5/i;",
        ">;",
        "Lio/github/rockerhieu/emojicon/f$d;",
        "Lio/github/rockerhieu/emojicon/c$a;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/p;",
        "Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerActivity.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2377:1\n254#2,2:2378\n254#2,2:2381\n254#2,2:2383\n254#2,2:2385\n254#2,2:2387\n254#2,2:2389\n1#3:2380\n*S KotlinDebug\n*F\n+ 1 PlayerActivity.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity\n*L\n506#1:2378,2\n1858#1:2381,2\n1865#1:2383,2\n1897#1:2385,2\n1904#1:2387,2\n1966#1:2389,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009a\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008$\u0008\u0017\u0018\u0000 \u00a3\u00032\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0002\u00a4\u0003B\t\u00a2\u0006\u0006\u0008\u00a1\u0003\u0010\u00a2\u0003J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0012\u0010\u000b\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002J\u001a\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0013\u001a\u00020\u0007H\u0002J\u0008\u0010\u0014\u001a\u00020\u0007H\u0002J\u0008\u0010\u0015\u001a\u00020\u0007H\u0002J\u0008\u0010\u0016\u001a\u00020\u0007H\u0002J\u0008\u0010\u0017\u001a\u00020\u0007H\u0002J\u0008\u0010\u0018\u001a\u00020\u0007H\u0002J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0018\u0010\"\u001a\u00020\u00072\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001fH\u0002J\u0008\u0010#\u001a\u00020\u0007H\u0002J\u0008\u0010$\u001a\u00020\u0007H\u0002J\u0008\u0010%\u001a\u00020\u0007H\u0002J\u0018\u0010)\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\'H\u0002J\u0008\u0010*\u001a\u00020\u0007H\u0002J\u0008\u0010+\u001a\u00020\u0007H\u0002J\u0008\u0010,\u001a\u00020\u0007H\u0002J\u0008\u0010-\u001a\u00020\u0007H\u0002J\u0008\u0010.\u001a\u00020\u0007H\u0002J\u0010\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020 H\u0002J\u0008\u00102\u001a\u00020\u0007H\u0003J\u0010\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000fH\u0002J\u0010\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u0019H\u0002J\u0008\u00107\u001a\u00020\u0007H\u0002J\u0008\u00108\u001a\u00020\u0007H\u0002J\u0008\u00109\u001a\u00020\u0007H\u0002J\u0012\u0010<\u001a\u00020\u00072\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0002J\u0018\u0010?\u001a\u00020\u00072\u0006\u0010=\u001a\u0002002\u0006\u0010>\u001a\u00020\u000fH\u0002J\u0008\u0010@\u001a\u00020\u0007H\u0002J\u0010\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020AH\u0002J\u0010\u0010F\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0003J\u0010\u0010G\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0002J\u0008\u0010H\u001a\u00020\u0007H\u0002J\u0010\u0010I\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0002J\u0010\u0010L\u001a\u00020\u00072\u0006\u0010K\u001a\u00020JH\u0002J\u0008\u0010M\u001a\u00020\u0007H\u0002J\u0008\u0010N\u001a\u00020\u0007H\u0002J\u0010\u0010O\u001a\u00020\u00072\u0006\u0010E\u001a\u00020DH\u0002J\u0008\u0010P\u001a\u00020\u0007H\u0002J\u0008\u0010Q\u001a\u00020\u0007H\u0002J\u0008\u0010R\u001a\u00020\u0007H\u0002J\u0008\u0010S\u001a\u00020\u0007H\u0002J\u0010\u0010V\u001a\u00020\u00072\u0006\u0010U\u001a\u00020TH\u0002J\u0008\u0010W\u001a\u00020\u0007H\u0002J\u0018\u0010Z\u001a\u00020\u00072\u000e\u00103\u001a\n\u0012\u0004\u0012\u00020Y\u0018\u00010XH\u0002J\u001a\u0010]\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u000f2\u0008\u0010\\\u001a\u0004\u0018\u00010AH\u0002J\u0010\u0010_\u001a\u00020\u00072\u0006\u0010K\u001a\u00020^H\u0002J\u0010\u0010a\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u0019H\u0002J\u0010\u0010c\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u0019H\u0002J\u0008\u0010d\u001a\u00020\u0007H\u0003J\u0008\u0010e\u001a\u00020\u0007H\u0002J\u0010\u0010g\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020fH\u0002J\u0008\u0010h\u001a\u00020\u0007H\u0003J\u0010\u0010i\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0008\u0010j\u001a\u00020\u0007H\u0002J\u0018\u0010m\u001a\u00020\u00072\u0006\u0010k\u001a\u00020J2\u0006\u0010l\u001a\u00020\u0019H\u0002J\u0008\u0010n\u001a\u00020\u0007H\u0002J\u0008\u0010o\u001a\u00020\u0007H\u0002J\u0010\u0010r\u001a\u00020\u00072\u0006\u0010q\u001a\u00020pH\u0002J\u0008\u0010s\u001a\u00020\u0007H\u0002J\u0008\u0010t\u001a\u00020\u0007H\u0002J\u0008\u0010u\u001a\u00020\u0007H\u0002J\u0010\u0010v\u001a\u00020\u00072\u0006\u0010E\u001a\u00020JH\u0002J\u0008\u0010w\u001a\u00020\u0007H\u0002J\u0010\u0010y\u001a\u00020\u00072\u0006\u0010x\u001a\u00020\u0019H\u0002J\u0008\u0010z\u001a\u00020\u0007H\u0002J\u0010\u0010}\u001a\u00020\u00022\u0006\u0010|\u001a\u00020{H\u0016J\u0008\u0010~\u001a\u00020\u0019H\u0014J\u0012\u0010\u0081\u0001\u001a\u00020\u00072\u0007\u0010\u0080\u0001\u001a\u00020\u007fH\u0016J\u0013\u0010\u0084\u0001\u001a\u00020\u00072\u0008\u0010\u0083\u0001\u001a\u00030\u0082\u0001H\u0016J\t\u0010\u0085\u0001\u001a\u00020\u0007H\u0014J(\u0010\u008b\u0001\u001a\u00020\u00072\u0008\u0010\u0087\u0001\u001a\u00030\u0086\u00012\u0007\u0010\u0088\u0001\u001a\u00020\u00192\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0014J\u000e\u0010\u008d\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u008c\u0001H\u0014J\t\u0010\u008e\u0001\u001a\u00020\u0007H\u0015J\t\u0010\u008f\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0090\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0091\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0092\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0093\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u0094\u0001\u001a\u00020\u0007H\u0004J\t\u0010\u0095\u0001\u001a\u00020\u000fH\u0014J\t\u0010\u0096\u0001\u001a\u00020pH\u0014J\u0013\u0010\u0098\u0001\u001a\u00020\u00072\u0008\u0010\u0097\u0001\u001a\u00030\u0089\u0001H\u0014J\u0012\u0010\u009a\u0001\u001a\u00020\u00072\u0007\u0010\u0099\u0001\u001a\u000200H\u0016J\u0012\u0010\u009c\u0001\u001a\u00020\u00192\u0007\u0010\u009b\u0001\u001a\u000200H\u0016J\u0012\u0010\u009d\u0001\u001a\u00020\u00192\u0007\u0010\u009b\u0001\u001a\u000200H\u0016J\t\u0010\u009e\u0001\u001a\u000200H\u0016J\t\u0010\u009f\u0001\u001a\u00020\u0007H\u0014J\u0013\u0010\u00a0\u0001\u001a\u00020\u00072\u0008\u0010K\u001a\u0004\u0018\u00010JH\u0014J\t\u0010\u00a1\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u00a2\u0001\u001a\u00020\u0007H\u0014J\u0012\u0010\u00a4\u0001\u001a\u00020\u00072\u0007\u0010\u00a3\u0001\u001a\u00020\u0019H\u0014J&\u0010\u00a7\u0001\u001a\u00020\u00072\u0007\u0010\u00a5\u0001\u001a\u0002002\u0007\u0010\u00a6\u0001\u001a\u0002002\t\u00103\u001a\u0005\u0018\u00010\u0086\u0001H\u0014J\u000b\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\u000fH\u0014J\u000b\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u000fH\u0016J\u000c\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u00aa\u0001H\u0014J\u0013\u0010\u00ae\u0001\u001a\u00020\u00072\u0008\u0010\u00ad\u0001\u001a\u00030\u00ac\u0001H\u0014J\u0013\u0010\u00b0\u0001\u001a\u00020\u00072\u0008\u0010\u00ad\u0001\u001a\u00030\u00af\u0001H\u0014J\u0013\u0010\u00b2\u0001\u001a\u00020\u00072\u0008\u0010\u00ad\u0001\u001a\u00030\u00b1\u0001H\u0014J\u0012\u0010\u00b4\u0001\u001a\u00020\u00072\u0007\u0010\u00b3\u0001\u001a\u000200H\u0014J\t\u0010\u00b5\u0001\u001a\u000200H\u0014J\u0012\u0010\u00b7\u0001\u001a\u00020\u00072\u0007\u0010\u00b6\u0001\u001a\u000200H\u0014J\u0013\u0010\u00ba\u0001\u001a\u00020\u00072\u0008\u0010\u00b9\u0001\u001a\u00030\u00b8\u0001H\u0014J\u0013\u0010\u00bd\u0001\u001a\u00020\u00072\u0008\u0010\u00bc\u0001\u001a\u00030\u00bb\u0001H\u0014J\u001b\u0010\u00c0\u0001\u001a\u00020\u00072\u0007\u0010\u00be\u0001\u001a\u00020\u00192\u0007\u0010\u00bf\u0001\u001a\u00020\u000fH\u0014J\u0012\u0010\u00c2\u0001\u001a\u00020\u00072\u0007\u0010\u00c1\u0001\u001a\u00020\u0019H\u0014J\u001b\u0010\u00c5\u0001\u001a\u00020\u00072\u0007\u0010\u00c3\u0001\u001a\u00020\u000f2\u0007\u0010\u00c4\u0001\u001a\u000200H\u0014J\u0013\u0010\u00c8\u0001\u001a\u00020\u00072\u0008\u0010\u00c7\u0001\u001a\u00030\u00c6\u0001H\u0016J\u0012\u0010\u00ca\u0001\u001a\u00020\u00072\u0007\u0010\u00c9\u0001\u001a\u000200H\u0014J\u001c\u0010\u00cc\u0001\u001a\u00020\u00072\u0006\u0010[\u001a\u0002002\t\u0010\u00cb\u0001\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u00ce\u0001\u001a\u00020\u00072\u0007\u0010K\u001a\u00030\u00cd\u0001H\u0014J\u0014\u0010\u00d0\u0001\u001a\u00020\u00072\t\u0010\u00cf\u0001\u001a\u0004\u0018\u00010\u000fH\u0016J\u0013\u0010\u00d3\u0001\u001a\u00020\u00072\u0008\u0010\u00d2\u0001\u001a\u00030\u00d1\u0001H\u0014J)\u0010\u00d6\u0001\u001a\u00020\u00072\u0006\u0010K\u001a\u00020J2\u000c\u0008\u0002\u0010\u00d5\u0001\u001a\u0005\u0018\u00010\u00d4\u00012\u0008\u0008\u0002\u0010l\u001a\u00020\u0019H\u0004J\u0013\u0010\u00d8\u0001\u001a\u00020\u00072\u0008\u0010\u00ad\u0001\u001a\u00030\u00d7\u0001H\u0014J\u001e\u0010\u00da\u0001\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00192\u000b\u0008\u0002\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u000fH\u0007J\u0013\u0010\u00dd\u0001\u001a\u00020\u00072\u0008\u0010\u00dc\u0001\u001a\u00030\u00db\u0001H\u0014J\u0013\u0010\u00df\u0001\u001a\u00020\u00072\u0008\u0010\u00ad\u0001\u001a\u00030\u00de\u0001H\u0014J\t\u0010\u00e0\u0001\u001a\u00020\u0007H\u0016J\u0013\u0010\u00e2\u0001\u001a\u00020\u00072\u0008\u0010\u00ad\u0001\u001a\u00030\u00e1\u0001H\u0014J\u0013\u0010\u00e4\u0001\u001a\u00020\u00072\u0008\u0010\u00ad\u0001\u001a\u00030\u00e3\u0001H\u0014J\u0011\u0010\u00e5\u0001\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u000fH\u0014J\u0011\u0010\u00e6\u0001\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u000fH\u0014J\t\u0010\u00e7\u0001\u001a\u00020\u0007H\u0016J\t\u0010\u00e8\u0001\u001a\u00020\u0007H\u0016J\u0012\u0010\u00ea\u0001\u001a\u00020\u00072\u0007\u0010\n\u001a\u00030\u00e9\u0001H\u0014J\u0012\u0010\u00ec\u0001\u001a\u00020\u00072\u0007\u0010\u00eb\u0001\u001a\u00020\u0019H\u0014J\t\u0010\u00ed\u0001\u001a\u00020\u0007H\u0016J\u001d\u0010\u00f0\u0001\u001a\u00020\u00072\u0006\u0010K\u001a\u00020J2\n\u0010\u00ef\u0001\u001a\u0005\u0018\u00010\u00ee\u0001H\u0016R*\u0010\u00f8\u0001\u001a\u00030\u00f1\u00018\u0004@\u0004X\u0084.\u00a2\u0006\u0018\n\u0006\u0008\u00f2\u0001\u0010\u00f3\u0001\u001a\u0006\u0008\u00f4\u0001\u0010\u00f5\u0001\"\u0006\u0008\u00f6\u0001\u0010\u00f7\u0001R\u001a\u0010\u00fb\u0001\u001a\u00030\u00f9\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0001\u0010\u00fa\u0001R\u001a\u0010\u00ff\u0001\u001a\u00030\u00fc\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00fd\u0001\u0010\u00fe\u0001R\u0018\u0010\u0083\u0002\u001a\u00030\u0080\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0002\u0010\u0082\u0002R\u0018\u0010\u0087\u0002\u001a\u00030\u0084\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0002\u0010\u0086\u0002R\u0018\u0010\u008b\u0002\u001a\u00030\u0088\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0002\u0010\u008a\u0002R\u001c\u0010\u008f\u0002\u001a\u0005\u0018\u00010\u008c\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0002\u0010\u008e\u0002R\u001a\u0010\u0093\u0002\u001a\u00030\u0090\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0002\u0010\u0092\u0002R)\u0010\u009a\u0002\u001a\u0002008\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0094\u0002\u0010\u0095\u0002\u001a\u0006\u0008\u0096\u0002\u0010\u0097\u0002\"\u0006\u0008\u0098\u0002\u0010\u0099\u0002R*\u0010\u00a2\u0002\u001a\u00030\u009b\u00028\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u009c\u0002\u0010\u009d\u0002\u001a\u0006\u0008\u009e\u0002\u0010\u009f\u0002\"\u0006\u0008\u00a0\u0002\u0010\u00a1\u0002R*\u0010\u00aa\u0002\u001a\u00030\u00a3\u00028\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00a4\u0002\u0010\u00a5\u0002\u001a\u0006\u0008\u00a6\u0002\u0010\u00a7\u0002\"\u0006\u0008\u00a8\u0002\u0010\u00a9\u0002R*\u0010\u00b2\u0002\u001a\u00030\u00ab\u00028\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u00ac\u0002\u0010\u00ad\u0002\u001a\u0006\u0008\u00ae\u0002\u0010\u00af\u0002\"\u0006\u0008\u00b0\u0002\u0010\u00b1\u0002R\u001a\u0010\u00b6\u0002\u001a\u00030\u00b3\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0002\u0010\u00b5\u0002R\u001a\u0010\u00ba\u0002\u001a\u00030\u00b7\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0002\u0010\u00b9\u0002R\u0018\u0010\u00bc\u0002\u001a\u00030\u0088\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0002\u0010\u008a\u0002R\u0018\u0010\u00bf\u0002\u001a\u00030\u00bd\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0001\u0010\u00be\u0002R\u0019\u0010\u00c0\u0002\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bd\u0001\u0010\u0095\u0002R\u001a\u0010\u00c1\u0002\u001a\u00030\u00bd\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00be\u0002R\u0019\u0010\u00c4\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0002\u0010\u00c3\u0002R!\u0010\u00c7\u0002\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0002\u0010\u00c6\u0002R!\u0010\u00c9\u0002\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0002\u0010\u00c6\u0002R!\u0010\u00cb\u0002\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0002\u0010\u00c6\u0002R\u0019\u0010\u00cd\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cc\u0002\u0010\u00c3\u0002R\u0019\u0010\u00ce\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0001\u0010\u00c3\u0002R\u001c\u0010\u00d2\u0002\u001a\u0005\u0018\u00010\u00cf\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d0\u0002\u0010\u00d1\u0002R\u0019\u0010\u00d3\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u00c3\u0002R\u0019\u0010\u00d4\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00c3\u0002R\u0019\u0010\u0088\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u00c3\u0002R\u001c\u0010\u00d8\u0002\u001a\u0005\u0018\u00010\u00d5\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d6\u0002\u0010\u00d7\u0002R\u0019\u0010\u00da\u0002\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d9\u0002\u0010\u0095\u0002R\u001c\u0010\u00de\u0002\u001a\u0005\u0018\u00010\u00db\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00dc\u0002\u0010\u00dd\u0002R\u0019\u0010\u00e0\u0002\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0002\u0010\u0095\u0002R\u0019\u0010\u00e2\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e1\u0002\u0010\u00c3\u0002R\u001c\u0010\u00e4\u0002\u001a\u0005\u0018\u00010\u00bd\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e3\u0002\u0010\u00be\u0002R\u0019\u0010\u00e6\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e5\u0002\u0010\u00c3\u0002R\u001a\u0010\u00ea\u0002\u001a\u00030\u00e7\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0002\u0010\u00e9\u0002R\u001a\u0010\u00ee\u0002\u001a\u00030\u00eb\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00ec\u0002\u0010\u00ed\u0002R\u001e\u0010\u00f2\u0002\u001a\t\u0012\u0004\u0012\u00020T0\u00ef\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f0\u0002\u0010\u00f1\u0002R\u001c\u0010\u00f6\u0002\u001a\u0005\u0018\u00010\u00f3\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f4\u0002\u0010\u00f5\u0002R\u0019\u0010\u00f8\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f7\u0002\u0010\u00c3\u0002R\u0019\u0010\u00fa\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f9\u0002\u0010\u00c3\u0002R\u0019\u0010\u00fc\u0002\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fb\u0002\u0010\u00c3\u0002R\u001c\u0010\u0080\u0003\u001a\u0005\u0018\u00010\u00fd\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fe\u0002\u0010\u00ff\u0002R\u001c\u0010\u0084\u0003\u001a\u0005\u0018\u00010\u0081\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0003\u0010\u0083\u0003R\u0019\u0010\u0086\u0003\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0003\u0010\u0095\u0002R\u001c\u0010\u0088\u0003\u001a\u0005\u0018\u00010\u00db\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0003\u0010\u00dd\u0002R\u001a\u0010\u008a\u0003\u001a\u00030\u00db\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0003\u0010\u00dd\u0002R\u001a\u0010\u008c\u0003\u001a\u00030\u00db\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0003\u0010\u00dd\u0002R\u0019\u0010\u008e\u0003\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0003\u0010\u00c3\u0002R\u001b\u0010\u0091\u0003\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0003\u0010\u0090\u0003R\u001a\u0010\u0093\u0003\u001a\u00030\u00bd\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0003\u0010\u00be\u0002R\u0017\u0010\u0096\u0003\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0094\u0003\u0010\u0095\u0003R\u0017\u0010\u0098\u0003\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0097\u0003\u0010\u0095\u0003R\u0017\u0010\u009a\u0003\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0099\u0003\u0010\u0095\u0003R\u0017\u0010\u009c\u0003\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009b\u0003\u0010\u0095\u0003R\u0017\u0010\u009e\u0003\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009d\u0003\u0010\u0095\u0003R\u0017\u0010\u00a0\u0003\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009f\u0003\u0010\u0095\u0003\u00a8\u0006\u00a5\u0003"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;",
        "Le5/i;",
        "Lio/github/rockerhieu/emojicon/f$d;",
        "Lio/github/rockerhieu/emojicon/c$a;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/p;",
        "Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;",
        "",
        "m5",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;",
        "event",
        "G5",
        "l7",
        "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;",
        "action",
        "",
        "button",
        "V5",
        "U5",
        "R5",
        "W6",
        "N4",
        "v4",
        "l6",
        "y6",
        "",
        "visible",
        "O6",
        "Landroid/view/ViewGroup;",
        "overlay",
        "f6",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
        "giftList",
        "I5",
        "s7",
        "c5",
        "X5",
        "title",
        "",
        "price",
        "K5",
        "Y4",
        "m7",
        "n7",
        "o7",
        "W5",
        "selectedGift",
        "",
        "t4",
        "T4",
        "data",
        "A4",
        "forPkOpponent",
        "r4",
        "T6",
        "R6",
        "u4",
        "Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;",
        "watermark",
        "A6",
        "position",
        "content",
        "s4",
        "z6",
        "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;",
        "streamFromPrivateCharge",
        "L6",
        "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
        "limitBean",
        "J6",
        "M6",
        "D4",
        "z4",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "info",
        "N5",
        "I6",
        "y4",
        "g5",
        "b6",
        "F4",
        "P4",
        "C4",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;",
        "usermsg",
        "Q5",
        "Y5",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
        "L5",
        "type",
        "streamBean",
        "P5",
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;",
        "J5",
        "success",
        "H5",
        "show",
        "C6",
        "e5",
        "k5",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;",
        "T5",
        "Q4",
        "e6",
        "E4",
        "user",
        "isPkOpponentClicked",
        "N6",
        "K6",
        "w4",
        "",
        "seconds",
        "r7",
        "O4",
        "Z5",
        "S5",
        "M4",
        "x4",
        "on",
        "M5",
        "c6",
        "Landroid/view/LayoutInflater;",
        "layoutInflater",
        "B4",
        "E5",
        "Lio/github/rockerhieu/emojicon/emoji/Emojicon;",
        "emojicon",
        "i",
        "Landroid/view/View;",
        "v",
        "onEmojiconBackspaceClicked",
        "L0",
        "Landroid/content/Intent;",
        "intent",
        "isFromNewIntent",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "C0",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "n0",
        "r0",
        "P0",
        "onResume",
        "onPause",
        "onStop",
        "onDestroy",
        "p7",
        "N1",
        "M1",
        "outState",
        "onSaveInstanceState",
        "newPosition",
        "w",
        "currentPosition",
        "j",
        "k",
        "P1",
        "H6",
        "h5",
        "E2",
        "J1",
        "byCloseButton",
        "G4",
        "requestCode",
        "resultCode",
        "onActivityResult",
        "O1",
        "K1",
        "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;",
        "L1",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;",
        "msg",
        "t1",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;",
        "F2",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;",
        "w1",
        "coins",
        "y1",
        "I1",
        "coinbalance",
        "z1",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;",
        "bleMsg",
        "r1",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;",
        "chargeTimeRoomMsg",
        "x1",
        "ismoney",
        "rankstr",
        "v1",
        "isfree",
        "s1",
        "ptid",
        "plid",
        "p1",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;",
        "sendGiftMsg",
        "G2",
        "balance",
        "s2",
        "url",
        "L",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;",
        "q2",
        "fromGameCenterAddress",
        "A0",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;",
        "localRoomMsg",
        "x2",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;",
        "from",
        "P6",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;",
        "q1",
        "bad_content",
        "E6",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;",
        "peerageLogin",
        "u1",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;",
        "G1",
        "onBackPressed",
        "Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;",
        "w2",
        "Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;",
        "r2",
        "v2",
        "u2",
        "q",
        "h",
        "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageListEvent;",
        "t2",
        "bySwipe",
        "F5",
        "n",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;",
        "district",
        "V6",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;",
        "H",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;",
        "L4",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;",
        "k6",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)V",
        "viewModel",
        "Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;",
        "Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;",
        "giftAnimationUtil",
        "Lcom/qennnsad/aknkaksd/util/animations/f;",
        "M",
        "Lcom/qennnsad/aknkaksd/util/animations/f;",
        "peerageAnimationUtil",
        "Lcom/google/gson/Gson;",
        "N",
        "Lcom/google/gson/Gson;",
        "mGson",
        "Ljava/text/DecimalFormat;",
        "O",
        "Ljava/text/DecimalFormat;",
        "decimalFormat",
        "Landroid/os/Handler;",
        "P",
        "Landroid/os/Handler;",
        "bleHandler",
        "Lcom/qennnsad/aknkaksd/util/sound/a;",
        "Q",
        "Lcom/qennnsad/aknkaksd/util/sound/a;",
        "mSoundUtils",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;",
        "R",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;",
        "pkPlayerManager",
        "S",
        "I",
        "I4",
        "()I",
        "h6",
        "(I)V",
        "mPreviewTime",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "T",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "K4",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "j6",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;)V",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/util/e0;",
        "U",
        "Lcom/qennnsad/aknkaksd/util/e0;",
        "H4",
        "()Lcom/qennnsad/aknkaksd/util/e0;",
        "d6",
        "(Lcom/qennnsad/aknkaksd/util/e0;)V",
        "fanClubUtil",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;",
        "V",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;",
        "J4",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;",
        "i6",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;)V",
        "msgUtils",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/b;",
        "W",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/b;",
        "audienceAdapter",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;",
        "b1",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;",
        "chatAdapter",
        "g1",
        "previewHandler",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Runnable;",
        "unblockRunnable",
        "oldcost",
        "runnableStop1",
        "T1",
        "Z",
        "danmuopenis",
        "V1",
        "Ljava/util/List;",
        "mGifts",
        "b2",
        "fanClubFreeGifts",
        "g2",
        "fanClubPaidGifts",
        "p2",
        "chatAtTheBottom",
        "subtitlesAvailable",
        "Lio/reactivex/disposables/c;",
        "y2",
        "Lio/reactivex/disposables/c;",
        "mWatermarkSubscription",
        "wentOutToCompetitorRightRoom",
        "hadDisconnection",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;",
        "H2",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;",
        "receivedPinMessageAdapter",
        "I2",
        "restoredPos",
        "Landroid/view/animation/Animation;",
        "J2",
        "Landroid/view/animation/Animation;",
        "mLoadingBAnim",
        "K2",
        "giftComboCount",
        "L2",
        "anchorOfflineHandledInLimit",
        "M2",
        "startPlaySecondaryTask",
        "N2",
        "isPreviewInited",
        "Lcom/qennnsad/aknkaksd/util/danmu/a;",
        "O2",
        "Lcom/qennnsad/aknkaksd/util/danmu/a;",
        "mDanmuControl",
        "Lcom/qennnsad/aknkaksd/util/danmu/c;",
        "P2",
        "Lcom/qennnsad/aknkaksd/util/danmu/c;",
        "mLevelDanmuControl",
        "Ljava/util/ArrayList;",
        "Q2",
        "Ljava/util/ArrayList;",
        "animationMsgs",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;",
        "R2",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;",
        "sidePanelButtonAdapter",
        "S2",
        "isRunning",
        "T2",
        "isTimer",
        "U2",
        "isDead",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;",
        "V2",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;",
        "privateRoomDialogFragment",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;",
        "W2",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;",
        "roomFinishedFragment",
        "X2",
        "mVideoScaleIndex",
        "Y2",
        "shakeShareAnimation",
        "Z2",
        "shakeGameAnimation",
        "a3",
        "shakeFanClubAnimation",
        "b3",
        "isBluetoothMsgWasReceived",
        "c3",
        "Ljava/lang/String;",
        "nobleItemTitleSelected",
        "d3",
        "mPreviewTimeRunnable",
        "A5",
        "()Z",
        "isOrientationLandscape",
        "C5",
        "isPkExpected",
        "y5",
        "isFanGiftsTabEnabled",
        "D5",
        "isPrivateRoomDialogShown",
        "B5",
        "isPinnedEnabled",
        "z5",
        "isLeftStreamStarted",
        "<init>",
        "()V",
        "e3",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final f3:I = 0x65

.field public static final g3:Ljava/lang/String; = "EXTRA_PK_FINISHED_ON_THE_RIGHT"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final h3:Ljava/lang/String; = "anchor"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final i3:Ljava/lang/String; = "district"
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private E2:Z

.field private F2:Z

.field private G2:Z

.field protected H:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

.field private H2:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private I:Le5/f3;

.field private I2:I

.field private J:Le5/p4;

.field private J2:Landroid/view/animation/Animation;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private K:Le5/n4;

.field private K2:I

.field private L:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

.field private L2:Z

.field private M:Lcom/qennnsad/aknkaksd/util/animations/f;

.field private M2:Ljava/lang/Runnable;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final N:Lcom/google/gson/Gson;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private N2:Z

.field private final O:Ljava/text/DecimalFormat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private O2:Lcom/qennnsad/aknkaksd/util/danmu/a;

.field private final P:Landroid/os/Handler;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private P2:Lcom/qennnsad/aknkaksd/util/danmu/c;

.field private Q:Lcom/qennnsad/aknkaksd/util/sound/a;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final Q2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

.field private R2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private S:I

.field private volatile S2:Z

.field public T:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private T1:Z

.field private T2:Z

.field public U:Lcom/qennnsad/aknkaksd/util/e0;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private U2:Z

.field public V:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private V1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private V2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private W:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;

.field private W2:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private X2:I

.field private Y2:Landroid/view/animation/Animation;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private Z2:Landroid/view/animation/Animation;

.field private a3:Landroid/view/animation/Animation;

.field private b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

.field private b2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private b3:Z

.field private c3:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d3:Ljava/lang/Runnable;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g1:Landroid/os/Handler;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private g2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final p1:Ljava/lang/Runnable;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private p2:Z

.field private x1:I

.field private x2:Z

.field private y1:Ljava/lang/Runnable;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private y2:Lio/reactivex/disposables/c;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/Hilt_PlayerActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N:Lcom/google/gson/Gson;

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O:Ljava/text/DecimalFormat;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P:Landroid/os/Handler;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g1:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/s0;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/s0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p1:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/n0;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/n0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y1:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p2:Z

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q2:Ljava/util/ArrayList;

    .line 10
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T2:Z

    .line 11
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X2:I

    .line 12
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b3:Z

    .line 13
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$i;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$i;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->d3:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V

    return-void
.end method

.method private final A4(Ljava/lang/String;)V
    .locals 3

    const-string v0, "text"

    .line 1
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    const-string v1, "clipboard"

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/ClipboardManager;

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6210\u529f\u590d\u5236:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final A5()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final A6(Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;)V
    .locals 3

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting up watermark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;->getType()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;->getContent()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->s4(ILjava/lang/String;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->v4()V

    const-wide/16 v0, 0xa

    .line 6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/z;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/reactivex/schedulers/b;->e()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v0

    .line 8
    invoke-static {}, Lio/reactivex/android/schedulers/a;->c()Lio/reactivex/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d1;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Ln7/g;)Lio/reactivex/disposables/c;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y2:Lio/reactivex/disposables/c;

    :cond_2
    return-void
.end method

.method public static synthetic B3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final B5()Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->A5()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final B6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$logo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const/4 p2, 0x4

    int-to-double v2, p2

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->s4(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic C3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->i5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Landroid/view/View;)V

    return-void
.end method

.method private final C4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P2:Lcom/qennnsad/aknkaksd/util/danmu/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mLevelDanmuControl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/danmu/c;->e()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O2:Lcom/qennnsad/aknkaksd/util/danmu/a;

    if-nez v0, :cond_1

    const-string v0, "mDanmuControl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/danmu/a;->i()V

    return-void
.end method

.method private final C5()Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M2:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final C6(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFanClubButtons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->r:Le5/m4;

    const/16 v1, 0x8

    const-string v2, "layoutFanclubBtns"

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, v0, Le5/m4;->d:Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->W()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->x0()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v3, v0, Le5/m4;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, v0, Le5/m4;->e:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->U()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;->getFreeGifts()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, v0, Le5/m4;->d:Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic D3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final D4()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method private final D5()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPrivateRoomDialogShown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static synthetic E3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Z4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method private final E4()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->z(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZILjava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b6()V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C2()V

    return-void
.end method

.method public static synthetic F3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->n6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final F4()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->G4(Z)V

    return-void
.end method

.method public static synthetic F6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E6(ZLjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showInputLayout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic G3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->c7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    return-void
.end method

.method private final G5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->f()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->r(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F4()V

    goto/16 :goto_1

    .line 7
    :cond_2
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 8
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$b;->d()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 9
    invoke-static {p1, v2, v1, v3}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F4()V

    goto/16 :goto_1

    .line 11
    :cond_4
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$l;

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$l;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$l;->d()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L6(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V

    goto/16 :goto_1

    .line 13
    :cond_5
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$f;

    if-eqz v0, :cond_6

    .line 14
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->u4()V

    goto/16 :goto_1

    .line 15
    :cond_6
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$i;

    if-eqz v0, :cond_7

    .line 16
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$i;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$i;->d()Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J5(Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;)V

    goto/16 :goto_1

    .line 17
    :cond_7
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$a;

    if-eqz v0, :cond_8

    .line 18
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->A4(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_8
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$h;

    if-eqz v0, :cond_a

    .line 20
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v0, :cond_9

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v3, v0

    :goto_0
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$h;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->T(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_a
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;

    if-eqz v0, :cond_b

    .line 22
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->d()Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N5(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    goto :goto_1

    .line 23
    :cond_b
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$j;

    if-eqz v0, :cond_c

    .line 24
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x4()V

    goto :goto_1

    .line 25
    :cond_c
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$d;

    if-eqz v0, :cond_d

    .line 26
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$d;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$d;->e()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P5(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V

    goto :goto_1

    .line 27
    :cond_d
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$k;

    if-eqz v0, :cond_e

    .line 28
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$k;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$k;->d()I

    move-result p1

    invoke-static {p1, v2, v1, v3}, Lcom/qennnsad/aknkaksd/util/toast/a;->y(IZILjava/lang/Object;)V

    .line 29
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R6()V

    goto :goto_1

    .line 30
    :cond_e
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$g;

    if-eqz v0, :cond_f

    .line 31
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$g;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$g;->d()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object p1

    invoke-static {p1, p0}, Lb5/a;->g(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;Landroid/app/Activity;)V

    :cond_f
    :goto_1
    return-void
.end method

.method private static final G6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v1, 0x0

    const-string v2, "playerBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->l:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f010045

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Le5/f3;->s:Le5/s4;

    iget-object p0, p0, Le5/s4;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic H3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->f5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final H5(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/f3;->r:Le5/m4;

    iget-object v0, v0, Le5/m4;->b:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getFanclubEnabled()I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->C6(Z)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-direct {p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->C6(Z)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez p1, :cond_3

    const-string p1, "giftBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v1, p1

    :goto_2
    iget-object p1, v1, Le5/n4;->x:Landroid/widget/TextSwitcher;

    .line 7
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y5()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    .line 8
    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    return-void
.end method

.method public static synthetic I3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->m6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final I5(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGiftListLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "NULL"

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_4

    .line 3
    invoke-static {p1}, Lb5/a;->o(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b2:Ljava/util/List;

    .line 5
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g2:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "========"

    .line 6
    invoke-virtual {v0, v4, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b2:Ljava/util/List;

    aput-object v4, v3, v2

    const-string v4, "Gifts Fanclub Free: %s"

    invoke-virtual {v0, v4, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g2:Ljava/util/List;

    aput-object v3, v1, v2

    const-string v2, "Gifts Fanclub Paid: %s"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Lb5/a;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V1:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T4()V

    :cond_4
    return-void
.end method

.method private final I6()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->n:Landroid/widget/ImageView;

    const v1, 0x7f08046a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    return-void
.end method

.method public static synthetic J3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->d5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method private final J5(Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;)V
    .locals 3

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Join club result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H4()Lcom/qennnsad/aknkaksd/util/e0;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$j;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$j;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/qennnsad/aknkaksd/util/e0;->A(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final J6(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Show private limit: %s"

    invoke-virtual {v0, v4, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getIdX()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getIdX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "Show private limit. Wrong id"

    .line 4
    invoke-virtual {v0, v1, p1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R6()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getToy_status()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getToy_status()Ljava/lang/String;

    move-result-object v2

    const-string v4, "limitBean.anchor.toy_status"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getToyStatus()I

    move-result v4

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toy statuses don\'t match. Catch up actual: toy_status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->setToyStatus(I)V

    .line 11
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W5()V

    .line 12
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPrivateLimit---ID:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getIdX()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--anchorid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getCome()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v2, v4, :cond_3

    const-string p1, "\u8be5\u623f\u95f4\u6b63\u5728\u5207\u6362\u4e3a\u8ba1\u65f6\u6536\u8d39\uff0c\u8bf7\u7a0d\u5019..."

    .line 14
    invoke-static {p1, v3, v5, v6}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getOnline()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    new-array p1, v3, [Ljava/lang/Object;

    const-string v2, "Show private limit - anchor is offline."

    .line 16
    invoke-virtual {v0, v2, p1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iput-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L2:Z

    .line 18
    invoke-direct {p0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->r4(Z)V

    return-void

    .line 19
    :cond_5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite()I

    move-result v2

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type com.qennnsad.aknkaksd.BaseBeautyApplication"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;

    invoke-virtual {v4, v2}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->setMoney(I)V

    .line 21
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const-string v4, "pkPlayerManager"

    if-nez v2, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v6

    goto :goto_2

    :cond_6
    move-object v7, v2

    :goto_2
    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$q;

    invoke-direct {v8, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$q;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    new-instance v9, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$r;

    invoke-direct {v9, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$r;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$s;

    invoke-direct {v10, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$s;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->X(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Z)V

    .line 22
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getStream()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_a

    .line 23
    iget-boolean v7, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    if-nez v7, :cond_a

    .line 24
    iget-object v7, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v7, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v6

    :cond_8
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getStream()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->getPull_url()Ljava/lang/String;

    move-result-object v4

    const-string v8, "limitBean.stream.pull_url"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->w0(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getTips()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getTips()Ljava/lang/String;

    move-result-object v4

    const-string v7, "limitBean.tips"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_a

    .line 26
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getTips()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v5, v6}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    .line 27
    :cond_a
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->setLimit(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    .line 28
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q4()V

    .line 29
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const-string v7, "playerBinding"

    if-nez v4, :cond_b

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v6

    :cond_b
    iget-object v4, v4, Le5/f3;->g:Le5/r4;

    iget-object v4, v4, Le5/r4;->e:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 30
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v4, :cond_c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v6

    :cond_c
    iget-object v4, v4, Le5/f3;->s:Le5/s4;

    iget-object v8, v4, Le5/s4;->k:Landroid/widget/LinearLayout;

    const-string v4, "playerBinding.topAudience.roomCoinRankToday"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    new-instance v11, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$t;

    invoke-direct {v11, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$t;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 31
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v4, :cond_d

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v6

    :cond_d
    iget-object v4, v4, Le5/f3;->g:Le5/r4;

    iget-object v4, v4, Le5/r4;->e:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Y2:Landroid/view/animation/Animation;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getRealtimeSubtitlesOn()I

    move-result v4

    if-ne v4, v1, :cond_e

    const/4 v4, 0x1

    goto :goto_5

    :cond_e
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x2:Z

    if-eqz v4, :cond_f

    .line 33
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v4, v1}, Lg5/a;->p0(I)V

    .line 34
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v4, v1}, Lg5/a;->q0(I)V

    .line 35
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    .line 36
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {p0, v4, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->N0(ZZ)V

    .line 37
    :cond_f
    iget-boolean v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x2:Z

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p0, v4, v6}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->q0(ZLkotlin/jvm/functions/Function1;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->z4(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    if-eqz v2, :cond_11

    .line 39
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getStream()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->getWatermark()Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->A6(Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;)V

    .line 40
    :cond_11
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Z5()V

    .line 41
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getFanclubEnabled()I

    move-result v4

    if-ne v4, v1, :cond_12

    const/4 v4, 0x1

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    :goto_7
    invoke-direct {p0, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->C6(Z)V

    .line 42
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPreview_time()I

    move-result v4

    if-lez v4, :cond_15

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPtid()I

    move-result v4

    if-eq v4, v5, :cond_13

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPtid()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_15

    .line 43
    :cond_13
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getCome()I

    move-result p1

    if-ne p1, v1, :cond_14

    .line 44
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B2()V

    goto :goto_8

    .line 45
    :cond_14
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K6()V

    :goto_8
    return-void

    .line 46
    :cond_15
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getCome()I

    move-result v4

    if-eq v4, v1, :cond_17

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->a0()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_9

    :cond_16
    const/4 v4, 0x0

    goto :goto_a

    :cond_17
    :goto_9
    const/4 v4, 0x1

    .line 47
    :goto_a
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPtid()I

    move-result v7

    if-eqz v7, :cond_1e

    if-eqz v4, :cond_18

    goto :goto_d

    .line 48
    :cond_18
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPtid()I

    move-result p1

    if-ne p1, v5, :cond_19

    goto :goto_b

    :cond_19
    const/4 v1, 0x0

    :goto_b
    const-string p1, "2"

    if-nez v2, :cond_1a

    .line 49
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->a0()Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v1, :cond_1a

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "#218: Requesting `getPrivateCharge` to get the stream url address..."

    .line 50
    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-static {v0, p1, v6, v5, v6}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->Y0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void

    :cond_1a
    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1c

    .line 52
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->a0()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 53
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B2()V

    goto :goto_c

    .line 54
    :cond_1b
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-static {v0, p1, v6, v5, v6}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->Y0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    goto :goto_c

    .line 55
    :cond_1c
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B2()V

    goto :goto_c

    .line 56
    :cond_1d
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K6()V

    :goto_c
    return-void

    .line 57
    :cond_1e
    :goto_d
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B2()V

    return-void
.end method

.method public static synthetic K3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->t5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method private final K5(Ljava/lang/String;F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->c3:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v2, 0x0

    const-string v3, "giftBinding"

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    iget-object p1, p1, Le5/n4;->u:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    iget-object p1, p1, Le5/n4;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v2, p1

    :goto_2
    iget-object p1, v2, Le5/n4;->l:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/qennnsad/aknkaksd/util/p0;->e(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final K6()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v0, :cond_0

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->F0()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    .line 3
    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Show private fragment"

    invoke-virtual {v1, v2, v0}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a02d6

    .line 6
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public static synthetic L2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic L3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lkotlin/Unit;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->u5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lkotlin/Unit;)V

    return-void
.end method

.method private final L5(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->B5()Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H2:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->s(Ljava/util/List;)V

    goto :goto_1

    .line 7
    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final L6(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V
    .locals 3

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Show private stream from the getPrivateCharge: %s"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v0, :cond_0

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->getPull_url()Ljava/lang/String;

    move-result-object v1

    const-string v2, "streamFromPrivateCharge.pull_url"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->w0(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B2()V

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->getWatermark()Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->A6(Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;)V

    :cond_1
    return-void
.end method

.method public static synthetic M2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic M3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private final M4(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;->Pk:Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    invoke-virtual {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b6()V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C2()V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez p1, :cond_0

    const-string p1, "pkPlayerManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->F0()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E2:Z

    return-void
.end method

.method private final M5(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H2:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->p(Z)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H2:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final M6(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->l:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getAnchor()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$AnchorBean;->getLob()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$a;->a(Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic N2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->B6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic N3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->s6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final N4()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E2:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->R1()V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B2()V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->i:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->S()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->setCurrentItem(I)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    .line 6
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E2:Z

    .line 7
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p7()V

    :cond_0
    return-void
.end method

.method private final N5(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S5()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c1;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M2:Ljava/lang/Runnable;

    return-void
.end method

.method private final N6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Z)V
    .locals 7

    .line 1
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;

    invoke-direct {v5, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$u;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;-><init>(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v6, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic O2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V

    return-void
.end method

.method public static synthetic O3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V

    return-void
.end method

.method private final O4()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->setPk(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v0, :cond_1

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E5()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZZILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_2

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->B5()Z

    move-result v0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/qennnsad/aknkaksd/util/extentions/b;->a(Le5/f3;ZZ)V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getFanclubEnabled()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->C6(Z)V

    .line 6
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x2:Z

    invoke-virtual {p0, v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->N0(ZZ)V

    .line 7
    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    .line 8
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Z5()V

    return-void
.end method

.method private static final O5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->h5(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H6()V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->k:Lx4/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_PK_BATTLE_START:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, p1

    invoke-virtual {v0, v1, v2}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    return-void
.end method

.method private final O6(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v1, 0x0

    const-string v2, "playerBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/f3;->j:Le5/d4;

    iget-object v0, v0, Le5/d4;->j:Lcom/ksyun/media/player/KSYTextureView;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Le5/f3;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J2:Landroid/view/animation/Animation;

    if-nez p1, :cond_3

    const p1, 0x7f010044

    .line 4
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J2:Landroid/view/animation/Animation;

    .line 5
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J2:Landroid/view/animation/Animation;

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    iget-object p1, v1, Le5/f3;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J2:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 10
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->f6(Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public static synthetic P2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lkotlin/Unit;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->v5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lkotlin/Unit;)Z

    move-result p0

    return p0
.end method

.method public static synthetic P3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->h7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private final P4()V
    .locals 3

    .line 1
    new-instance v0, Lcom/qennnsad/aknkaksd/util/danmu/a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/util/danmu/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O2:Lcom/qennnsad/aknkaksd/util/danmu/a;

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/danmu/c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/util/danmu/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P2:Lcom/qennnsad/aknkaksd/util/danmu/c;

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O2:Lcom/qennnsad/aknkaksd/util/danmu/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mDanmuControl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Le5/i;

    iget-object v2, v2, Le5/i;->b:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/util/danmu/a;->q(Lmaster/flame/danmaku/controller/f;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P2:Lcom/qennnsad/aknkaksd/util/danmu/c;

    if-nez v0, :cond_1

    const-string v0, "mLevelDanmuControl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->c:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/util/danmu/c;->l(Lmaster/flame/danmaku/controller/f;)V

    return-void
.end method

.method private final P5(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateAccessGranted. Type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->getPull_url()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 3
    iput-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5

    const/16 v3, 0x34

    if-eq v1, v3, :cond_3

    const/16 v0, 0x39

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "\u5df2\u82b1\u8d39:1\u5206\u949f"

    .line 6
    invoke-virtual {p0, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->v1(ZLjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "4"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u82b1\u8d39:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;->b()Lcom/qennnsad/aknkaksd/BaseBeautyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getMoney()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u91d1\u5e01"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->v1(ZLjava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "2"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_7

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x2

    const-string v1, "1234597"

    .line 12
    invoke-static {v1, p1, v4, v0, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 13
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->B2()V

    if-eqz p2, :cond_9

    .line 14
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez p1, :cond_8

    const-string p1, "pkPlayerManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v2, p1

    :goto_2
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->getPull_url()Ljava/lang/String;

    move-result-object p1

    const-string v0, "streamBean.pull_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->T(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;->getWatermark()Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->A6(Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;)V

    :cond_9
    return-void
.end method

.method public static synthetic Q2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static synthetic Q3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->q5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final Q4()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const-string v1, "playerBinding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Le5/f3;->r:Le5/m4;

    iget-object v0, v0, Le5/m4;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Le5/f3;->r:Le5/m4;

    iget-object v0, v0, Le5/m4;->b:Landroid/widget/ImageButton;

    .line 2
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->a3:Landroid/view/animation/Animation;

    if-nez v3, :cond_2

    const-string v3, "shakeFanClubAnimation"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    .line 3
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v0, v0, Le5/f3;->r:Le5/m4;

    iget-object v0, v0, Le5/m4;->b:Landroid/widget/ImageButton;

    const-string v3, "playerBinding.sidePanel.btnFanClub"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Le5/f3;->r:Le5/m4;

    iget-object v0, v0, Le5/m4;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private final declared-synchronized Q5(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S2:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J4()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getFromClientName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->r(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J4()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v1

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_1

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    .line 8
    iget-object v1, v0, Le5/s4;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget-object v3, v0, Le5/s4;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string v4, "tvTopMsg.paint"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v3, v4, v2, p1, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 13
    iget-object v1, v0, Le5/s4;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v3, 0x50

    .line 14
    invoke-static {p0, v3}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr p1, v4

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iget-object p1, v0, Le5/s4;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, v0, Le5/s4;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    sget-object p1, Lcom/qennnsad/aknkaksd/util/h1;->a:Lcom/qennnsad/aknkaksd/util/h1;

    invoke-virtual {p1, p0}, Lcom/qennnsad/aknkaksd/util/h1;->i(Landroid/app/Activity;)I

    move-result p1

    .line 18
    iget-object v2, v0, Le5/s4;->A:Landroid/widget/LinearLayout;

    int-to-float v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setX(F)V

    .line 19
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, p1

    mul-int/lit16 v2, v2, 0x1388

    div-int/2addr v2, p1

    int-to-long v4, v2

    .line 20
    iget-object p1, v0, Le5/s4;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    neg-int v0, v0

    invoke-static {p0, v3}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$k;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$k;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic Q6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;->COMMON:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showUserInfoDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic R2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lkotlin/Unit;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->w5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lkotlin/Unit;)V

    return-void
.end method

.method public static synthetic R3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->f7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/t;)V

    return-void
.end method

.method private static final R4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H4()Lcom/qennnsad/aknkaksd/util/e0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->U()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    .line 4
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$b;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/e0;->u(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final R5()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v1, :cond_0

    const-string v1, "pkPlayerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->S(Z)V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W6()V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q:Lcom/qennnsad/aknkaksd/util/sound/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/sound/a;->e()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->C4()V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g1:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->d3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final R6()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Trying to skip room. But there no any next. Show room finish dialog"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E2()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->R()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->i:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j(Ljava/lang/Float;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->i:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->n(Ljava/lang/Float;)V

    :goto_0
    return-void
.end method

.method public static synthetic S2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final S3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$msg"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getBad_content()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E6(ZLjava/lang/String;)V

    return-void
.end method

.method private static final S4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)Z
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->x0()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b2:Ljava/util/List;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b2:Ljava/util/List;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b2:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b3:Z

    invoke-virtual {v1, p1, v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->L0(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;IZ)V

    goto :goto_0

    :cond_0
    const p0, 0x7f13019a

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 7
    invoke-static {p0, p1, v1, v2}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private final S5()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W6()V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v1, 0x0

    const-string v2, "playerBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->B5()Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/qennnsad/aknkaksd/util/extentions/b;->a(Le5/f3;ZZ)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->N0(ZZ)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Le5/f3;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-virtual {v0, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->setIsEnabled(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->x0()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->C6(Z)V

    return-void
.end method

.method public static final S6(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;->b(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    return-void
.end method

.method public static synthetic T2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->o5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private static final T3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private final T4()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "DefaultLocale"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V1:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V1:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "initGiftList: %s"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v2, 0x0

    const-string v3, "giftBinding"

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Le5/n4;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getToyStatus()I

    move-result v0

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    iget-object v4, v4, Le5/n4;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->getToyStatus()I

    move-result v4

    if-ne v0, v4, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Le5/n4;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v0, v0, Le5/n4;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Le5/n4;->v:Landroid/widget/TextView;

    const-string v1, "giftBinding.roomGiftChargeinforBalance"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t0;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 7
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->c5()V

    .line 8
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Y4()V

    .line 9
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W5()V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v0, v0, Le5/n4;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/z;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/z;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->setGiftSelectChangeListener(Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/a;)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Le5/n4;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h1;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/n;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/n;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, p0, v1}, Lg5/a;->s0(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_8
    return-void
.end method

.method private final T5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$a;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$a;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom$Action;->OpenCasino:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom$Action;

    const-string v0, "\u8d4c\u573a"

    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V5(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->A0(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->l:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$a;->a()Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final T6()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v0, :cond_0

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const-string v1, "https://www.rmp-streaming.com/media/big-buck-bunny-360p.mp4"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->T(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic U2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->j5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic U3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q2:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static final U4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v1, 0x0

    const-string v2, "giftBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/n4;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Le5/n4;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 3
    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel$Action;->Topup:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel$Action;

    const v1, 0x7f1301bf

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.gifts_panel_recharge)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U5(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    const-string v1, "localDataManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/qennnsad/aknkaksd/util/l;->o0(Landroid/app/Activity;Lg5/a;)V

    return-void
.end method

.method private final U5(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->k:Lx4/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lx4/a;->a(Ljava/lang/String;Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V

    return-void
.end method

.method public static final U6(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;->c(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    return-void
.end method

.method public static synthetic V2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->a5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic V3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Le5/p4;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    return-object p0
.end method

.method private static final V4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v0, 0x0

    const-string v1, "giftBinding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Le5/n4;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->getSelectedGift()Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Le5/n4;->p:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private final V5(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->k:Lx4/a;

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lx4/a;->a(Ljava/lang/String;Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic W2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static final synthetic W3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Lg5/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    return-object p0
.end method

.method private static final W4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 10

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const-string v0, "giftBinding"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    iget-object p1, p1, Le5/n4;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->getSelectedGift()Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    move-result-object p1

    .line 2
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v6, "xxx Selected Gift: %s"

    invoke-virtual {v2, v6, v4}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->s0()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    move-result-object v2

    if-nez v2, :cond_2

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->s0()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result v2

    int-to-double v6, v2

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getPrice()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    int-to-double v8, v2

    cmpg-double v2, v6, v8

    if-gez v2, :cond_3

    const p1, 0x7f130331

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, v5, p1, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 6
    :cond_3
    iput v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K2:I

    .line 7
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    iget-object v0, v1, Le5/n4;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->t4(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b3:Z

    invoke-virtual {v1, p1, v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->L0(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;IZ)V

    return-void
.end method

.method private final W5()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v1, 0x0

    const-string v2, "giftBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/n4;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V1:Ljava/util/List;

    .line 3
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    iget-object v3, v3, Le5/n4;->x:Landroid/widget/TextSwitcher;

    invoke-virtual {v3}, Landroid/widget/TextSwitcher;->getDisplayedChild()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g2:Ljava/util/List;

    .line 5
    :cond_3
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    iget-object v1, v1, Le5/n4;->e:Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getToyStatus()I

    move-result v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/giftView/GiftLayoutView;->n(Ljava/util/List;IZ)V

    :cond_5
    return-void
.end method

.method private final W6()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "giftAnimationUtil"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;->C()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M:Lcom/qennnsad/aknkaksd/util/animations/f;

    if-nez v0, :cond_1

    const-string v0, "peerageAnimationUtil"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/animations/f;->p()V

    return-void
.end method

.method public static synthetic X2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->u6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static final synthetic X3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X2:I

    return p0
.end method

.method private static final X4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->t0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->s7()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final X5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_0

    const-string v0, "giftBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/n4;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c;->g()V

    const/high16 v0, -0x40800000    # -1.0f

    const-string v1, ""

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K5(Ljava/lang/String;F)V

    :cond_1
    return-void
.end method

.method private static final X6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->c()Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->a()V

    :goto_0
    return-void
.end method

.method public static synthetic Y2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    return-void
.end method

.method public static final synthetic Y3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    return-object p0
.end method

.method private final Y4()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v1, 0x0

    const-string v2, "giftBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/n4;->w:Landroid/widget/TextSwitcher;

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i1;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Le5/n4;->x:Landroid/widget/TextSwitcher;

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/m0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/m0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Le5/n4;->y:Landroid/widget/TextSwitcher;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b0;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->m7()V

    return-void
.end method

.method private final Y5()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T2:Z

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    .line 3
    iget-object v1, v0, Le5/s4;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Le5/s4;->y:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 5
    iget-object v0, v0, Le5/s4;->y:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    return-void
.end method

.method private static final Y6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/t;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/toast/a;->j(Landroid/content/Context;Lcom/qennnsad/aknkaksd/presentation/common/l$a;)V

    :cond_0
    return-void
.end method

.method public static synthetic Z2(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    return-void
.end method

.method public static final synthetic Z3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Le5/f3;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    return-object p0
.end method

.method private static final Z4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->m7()V

    return-void
.end method

.method private final Z5()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->setIsEnabled(Z)V

    return-void
.end method

.method private static final Z6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v1, 0x0

    const-string v2, "playerBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/f3;->n:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/img/e;->i(Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 2
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Le5/f3;->s:Le5/s4;

    iget-object p0, p0, Le5/s4;->z:Landroid/widget/ImageView;

    const/4 v0, 0x1

    const v1, 0x7f080435

    const v2, 0x7f0803e2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/img/e;->g(Landroid/widget/ImageView;Landroid/net/Uri;ZII)V

    return-void
.end method

.method public static synthetic a3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static final synthetic a4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g1:Landroid/os/Handler;

    return-object p0
.end method

.method private static final a5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->n7()V

    return-void
.end method

.method private static final a6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const-string v1, "Bluetooth"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "OLD LEVEL 0"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x1:I

    return-void
.end method

.method private static final a7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p0, :cond_0

    const-string p0, "playerBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Le5/f3;->s:Le5/s4;

    iget-object p0, p0, Le5/s4;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic b3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->r5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static final synthetic b4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    return-object p0
.end method

.method private static final b5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->o7()V

    .line 2
    sget-object p1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel$Action;->VipPanel:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel$Action;

    const v0, 0x7f13039b

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.room_noble_open)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U5(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V

    return-void
.end method

.method private final b6()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g1:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->d3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N2:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S:I

    const/4 v1, 0x5

    rem-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x5

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending finish reduce free preview request, time spent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->D2(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private static final b7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getBroadcasting()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Show user info - anchor is offline."

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L2:Z

    if-eqz p1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L2:Z

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->r4(Z)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_2

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->C:Landroid/widget/TextView;

    .line 7
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getBeanorignal()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic c3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->t6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static final synthetic c4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O4()V

    return-void
.end method

.method private final c5()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const-string v1, "giftBinding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Le5/n4;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Le5/n4;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 4
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Le5/n4;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Le5/n4;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c;

    .line 8
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$c;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    .line 9
    invoke-direct {v3, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 10
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/16 v7, 0x8

    const/16 v8, 0x96

    const v0, 0x7f0601bf

    .line 11
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    const v0, 0x7f0601ba

    .line 12
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v0, v0, Le5/n4;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;

    move-object v5, v3

    move v6, v7

    invoke-direct/range {v5 .. v10}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/a;-><init>(IIIII)V

    .line 15
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 16
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Le5/n4;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 17
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    iget-object v3, v3, Le5/n4;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 18
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Le5/n4;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j1;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final c6()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    const-string v1, "{\"type\":\"peerage_join\",\"title\":\"\u3010\u559c\u62a5\u3011\",\"user_id\":45608615,\"user_nickname\":\"\u6536\u5973\u738b\",\"desc\":\"\u6210\u4e3a\u5e78\u8fd0\u73a9\u5bb6\uff0c\u5145\u503c\u83b7\u5f97\u53cc\u500d67\u91d1\u5e01\",\"peerage_id\":100,\"peerage_name\":\"\"}"

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->r(Ljava/lang/String;)V

    return-void
.end method

.method private static final c7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J6(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    return-void
.end method

.method public static synthetic d3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->r6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static final synthetic d4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g5(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    return-void
.end method

.method private static final d5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->k:Lx4/a;

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_BUY_VIP:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->c3:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    sget-object v2, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom;->id:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 6
    invoke-virtual {p1, v0, v1}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    const-string v0, "sourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/qennnsad/aknkaksd/util/l;->g0(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/repository/m;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e6(Z)V

    return-void
.end method

.method private static final d7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;

    if-nez p0, :cond_0

    const-string p0, "audienceAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V

    return-void
.end method

.method public static final synthetic e4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->C5()Z

    move-result p0

    return p0
.end method

.method private final e5()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v1, 0x0

    const-string v2, "playerBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->g:Landroid/widget/ImageButton;

    const-string v3, "playerBinding.liveOperation.roomPinnedMsg"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/w0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/w0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    const-string v4, "localDataManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    const-string v5, "sourceFactory"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$d;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    .line 4
    invoke-direct {v0, v3, v4, v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H2:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H2:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->B5()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->g:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private final e6(Z)V
    .locals 6

    const/16 v0, 0x8

    const-string v1, "playerBinding"

    const/4 v2, 0x0

    const-string v3, "giftBinding"

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez p1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_0
    iget-object p1, p1, Le5/n4;->x:Landroid/widget/TextSwitcher;

    const-string v5, "giftBinding.swGiftFan"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y5()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .line 2
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->U0()Lkotlinx/coroutines/j2;

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_2
    iget-object p1, p1, Le5/n4;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X5()V

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_3
    iget-object p1, p1, Le5/n4;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "giftBinding.layoutGift"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/s1;->N(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    iget-object p1, p1, Le5/f3;->q:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_5
    iget-object p1, p1, Le5/f3;->g:Le5/r4;

    iget-object p1, p1, Le5/r4;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->m7()V

    .line 10
    sget-object p1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom$Action;->OpenGifts:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom$Action;

    invoke-direct {p0, p1, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V5(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_7
    iget-object p1, p1, Le5/n4;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_8
    iget-object p1, p1, Le5/f3;->q:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v4, p1

    :goto_0
    iget-object p1, v4, Le5/f3;->g:Le5/r4;

    iget-object p1, p1, Le5/r4;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private static final e7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H5(Z)V

    return-void
.end method

.method public static synthetic f3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->q6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static final synthetic f4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->D5()Z

    move-result p0

    return p0
.end method

.method private static final f5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;->m:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog$a;->a()Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final f6(Landroid/view/ViewGroup;)V
    .locals 3

    const v0, 0x7f080168

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b1;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/ViewGroup;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final f7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/t;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;

    .line 2
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->G5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;)V

    return-void
.end method

.method public static synthetic g3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->a7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V

    return-void
.end method

.method public static final synthetic g4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K5(Ljava/lang/String;F)V

    return-void
.end method

.method private final g5(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N2:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Initializing free preview timer"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N2:Z

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPreview_time()I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S:I

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v2, 0x0

    const-string v3, "playerBinding"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPtid()I

    move-result p1

    const-string v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8ba1\u8d39\u4ef7\u683c:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;->b()Lcom/qennnsad/aknkaksd/BaseBeautyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getMoney()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u91d1\u5e01/\u5206\u949f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u95e8\u7968\u76f4\u64ad"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;->b()Lcom/qennnsad/aknkaksd/BaseBeautyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getMoney()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u91d1\u5e01"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    iget-object p1, p1, Le5/f3;->s:Le5/s4;

    iget-object p1, p1, Le5/s4;->y:Landroid/widget/Chronometer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bd5\u770b\u5012\u8ba1\u65f6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, p1

    :goto_1
    iget-object p1, v2, Le5/f3;->s:Le5/s4;

    iget-object p1, p1, Le5/s4;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g1:Landroid/os/Handler;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->d3:Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final g6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$overlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p0, :cond_0

    const-string p0, "playerBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Le5/f3;->o:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method private static final g7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    .line 3
    :cond_3
    iget-object v1, v0, Le5/s4;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Le5/s4;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s!"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, v0, Le5/s4;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, v0, Le5/s4;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g;

    invoke-direct {v2, p0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 8
    :cond_4
    :goto_2
    iget-object p0, v0, Le5/s4;->g:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p0, v0, Le5/s4;->h:Landroid/widget/LinearLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic h3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->k7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V

    return-void
.end method

.method public static final synthetic h4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q5(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)V

    return-void
.end method

.method private static final h7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;Ljava/lang/String;Landroid/view/View;)V
    .locals 7

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$adTitle"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string p3, "ad.url"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;->getTarget()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/util/l;->z(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;ZZILjava/lang/Object;)V

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "\u70b9\u51fb\u4e0b\u8f7d\u9001\u73b0\u91d1\uff01"

    .line 3
    :cond_0
    sget-object p1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom$Action;->OpenDJ:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom$Action;

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V5(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->i7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic i4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;)V

    return-void
.end method

.method private static final i5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E5()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F4()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M4(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    :goto_0
    return-void
.end method

.method private static final i7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I5(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic j3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->l5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic j4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b6()V

    return-void
.end method

.method private static final j5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;->COMMON:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;Z)V

    return-void
.end method

.method private static final j7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p0, :cond_0

    const-string p0, "playerBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Le5/f3;->s:Le5/s4;

    iget-object p0, p0, Le5/s4;->r:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public static synthetic k3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->d7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic k4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p2:Z

    return-void
.end method

.method private final k5()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->N()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "playerBinding"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 3
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;

    .line 4
    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$e;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    .line 5
    invoke-direct {v1, v0, v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;->j(Z)V

    .line 7
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1
    iget-object v0, v0, Le5/f3;->r:Le5/m4;

    iget-object v0, v0, Le5/m4;->c:Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->e(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string v1, ""

    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Z2:Landroid/view/animation/Animation;

    if-nez v1, :cond_2

    const-string v1, "shakeGameAnimation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->r0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/w;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/w;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_3

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    iget-object v0, v4, Le5/f3;->r:Le5/m4;

    iget-object v0, v0, Le5/m4;->c:Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;

    const-string v1, "playerBinding.sidePanel.layoutCarousel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private static final k7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M5(Z)V

    return-void
.end method

.method public static synthetic l3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->o6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static final synthetic l4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X2:I

    return-void
.end method

.method private static final l5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;->k(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;)V

    :cond_0
    return-void
.end method

.method private final l6()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const-string v1, "playerBinding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/util/l;->p(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/extentions/b;->b(Le5/f3;I)V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    const-string v4, "sourceFactory"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$l;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$l;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-direct {v0, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    const-string v4, "localDataManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$m;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$m;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-direct {v0, v3, v4, v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;-><init>(Lg5/a;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    .line 4
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$n;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$n;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;->w(Lkotlin/jvm/functions/Function2;)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    const-string v3, "chatAdapter"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$o;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$o;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;->v(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$p;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$p;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;->u(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$a;)V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Le5/f3;->q:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    if-nez v4, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Le5/f3;->q:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a;

    invoke-direct {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->o:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;

    if-nez v3, :cond_7

    const-string v3, "audienceAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    iget-object v0, v0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->b:Landroid/widget/ImageView;

    const-string v3, "playerBinding.liveOperation.roomImgbtnGift"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/y0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/y0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    iget-object v0, v0, Le5/f3;->j:Le5/d4;

    iget-object v0, v0, Le5/d4;->l:Landroid/widget/RelativeLayout;

    const-string v3, "playerBinding.playerContainer.videoPair"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->m:Landroid/widget/ImageView;

    const-string v3, "playerBinding.topAudience.roomImgbtnClose"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "playerBinding.topAudience.roomSeatLayout"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 14
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e5()V

    .line 15
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->z6()V

    .line 16
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_c
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->n:Landroid/widget/LinearLayout;

    const-string v3, "playerBinding.topAudience.roomOwner"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_d
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->r:Landroid/widget/Button;

    const-string v3, "playerBinding.topAudience.roomTopBarStartTv"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->j:Landroid/widget/LinearLayout;

    const-string v3, "playerBinding.topAudience.roomCoinRankLay"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/z0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/z0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_f
    iget-object v0, v0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->e:Landroid/widget/ImageButton;

    const-string v3, "playerBinding.liveOperation.roomImgbtnShare"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/h0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_10
    iget-object v0, v0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->d:Landroid/widget/ImageButton;

    const-string v3, "playerBinding.liveOperation.roomImgbtnScale"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    iget-object v0, v0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->h:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_12

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_12
    iget-object v0, v0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->h:Landroid/widget/ImageButton;

    const-string v3, "playerBinding.liveOperation.rotatePlayerView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/q0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/q0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_13

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_13
    iget-object v0, v0, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->i:Landroid/widget/ImageButton;

    const-string v3, "playerBinding.liveOperation.translationView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p0;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 24
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_14
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Le5/f3;->g:Le5/r4;

    iget-object v0, v0, Le5/r4;->c:Landroid/widget/RelativeLayout;

    const-string v1, "playerBinding.liveOperation.roomImgbtnPublicChat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l0;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final l7()V
    .locals 4

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->pendingVideoRotation:Ljava/lang/Integer;

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v0, :cond_1

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    sget-object v1, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->pendingVideoRotation:Ljava/lang/Integer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->H0(I)V

    .line 6
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b6()V

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C2()V

    .line 9
    sget-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->pendingVideoRotation:Ljava/lang/Integer;

    .line 10
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b6()V

    .line 12
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C2()V

    .line 13
    sget-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    const/16 v0, 0x10e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->pendingVideoRotation:Ljava/lang/Integer;

    .line 14
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public static synthetic m3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public static final synthetic m4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S2:Z

    return-void
.end method

.method private final m5()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->j:Landroid/widget/ImageView;

    const-string v1, "binding.testDialogButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "release"

    const-string v2, "debug"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/x0;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/x0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final m6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e6(Z)V

    return-void
.end method

.method private final m7()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v1, 0x0

    const-string v2, "giftBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/n4;->w:Landroid/widget/TextSwitcher;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Le5/n4;->x:Landroid/widget/TextSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Le5/n4;->y:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W5()V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Le5/n4;->f:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Le5/n4;->s:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public static synthetic n3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic n4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K6()V

    return-void
.end method

.method private static final n5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "giftAnimationUtil"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M:Lcom/qennnsad/aknkaksd/util/animations/f;

    if-nez p1, :cond_1

    const-string p1, "peerageAnimationUtil"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p1

    :goto_1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2
    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c0;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/c0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/u0;

    invoke-direct {v6, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/u0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g0;

    invoke-direct {v7, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/util/l;->l0(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;Lcom/qennnsad/aknkaksd/util/animations/f;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final n6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/util/h1;->j(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e6(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 3
    invoke-static {p0, v0, v1, v2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final n7()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v1, 0x0

    const-string v2, "giftBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/n4;->w:Landroid/widget/TextSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Le5/n4;->x:Landroid/widget/TextSwitcher;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Le5/n4;->y:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W5()V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Le5/n4;->f:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Le5/n4;->s:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public static synthetic o3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->n5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic o4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M6(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V

    return-void
.end method

.method private static final o5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->o0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M4(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    return-void
.end method

.method private static final o6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->G4(Z)V

    return-void
.end method

.method private final o7()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v1, 0x0

    const-string v2, "giftBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/n4;->w:Landroid/widget/TextSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Le5/n4;->x:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Le5/n4;->y:Landroid/widget/TextSwitcher;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextSwitcher;->setDisplayedChild(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Le5/n4;->f:Landroidx/constraintlayout/widget/Group;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Le5/n4;->s:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public static synthetic p3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V

    return-void
.end method

.method public static final synthetic p4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Z)V

    return-void
.end method

.method private static final p5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a1;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/a1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final p6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom$Action;->OpenVipSeats:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom$Action;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V5(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;->l:Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$a;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Z6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic q4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    return-void
.end method

.method private static final q5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R6()V

    return-void
.end method

.method private static final q6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->o0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final q7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p0, :cond_0

    const-string p0, "playerBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Le5/f3;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/BlockTextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic r3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->a6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final r4(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "PK\u5bf9\u624b\u4e3b\u673a\u4e0b\u7ebf"

    goto :goto_0

    :cond_0
    const-string v0, "\u8be5\u4e3b\u64ad\u5df2\u4e0b\u64ad"

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez p1, :cond_1

    const-string p1, "pkPlayerManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, p1

    :goto_1
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->F0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R6()V

    :cond_2
    return-void
.end method

.method private static final r5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/o0;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/o0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final r6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->M(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;ZILjava/lang/Object;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private final r7(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/BlockTextView;

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p1:Ljava/lang/Runnable;

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long p1, p1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic s3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->j7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V

    return-void
.end method

.method private final s4(ILjava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying watermark params. Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "playerBinding"

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Le5/f3;->f:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Le5/f3;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v0, 0x41880000    # 17.0f

    .line 5
    invoke-static {p2, v0, p0}, Lcom/qennnsad/aknkaksd/util/l1;->a(Ljava/lang/String;FLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Le5/f3;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/util/h1;->h(Landroid/app/Activity;)I

    move-result p2

    const/16 v0, 0xa

    .line 8
    div-int/2addr p2, v0

    .line 9
    invoke-static {p0, v0}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result v4

    .line 10
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x14

    if-eqz p1, :cond_6

    const/4 v7, 0x1

    const/16 v8, 0xc

    if-eq p1, v7, :cond_5

    const/4 v6, 0x2

    const/16 v7, 0x15

    if-eq p1, v6, :cond_4

    .line 11
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    invoke-virtual {v5, v2, v2, v4, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {v5, v2, p2, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 18
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19
    invoke-virtual {v5, v4, v2, v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 22
    invoke-virtual {v5, v4, p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 23
    :goto_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_7
    iget-object p1, p1, Le5/f3;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v1, p1

    :goto_2
    iget-object p1, v1, Le5/f3;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    :cond_9
    return-void
.end method

.method private static final s5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E2()V

    return-void
.end method

.method private static final s6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity;->d:Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity$a;

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity$a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private final s7()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->s0()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->s0()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getRemainForNextLev()I

    move-result v1

    .line 3
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating GoldProgress. Balance= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Next-level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const/4 v3, 0x0

    const-string v5, "giftBinding"

    if-nez v2, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    iget-object v2, v2, Le5/n4;->i:Landroid/widget/ImageView;

    const-string v6, "giftBinding.goldLevelIc"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v6}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getEmceelevel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v4}, Lcom/qennnsad/aknkaksd/util/s1;->A(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 5
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v2, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    iget-object v2, v2, Le5/n4;->h:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v2, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    iget-object v2, v2, Le5/n4;->m:Landroid/widget/ProgressBar;

    add-int v6, v0, v1

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 7
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v2, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_3
    iget-object v2, v2, Le5/n4;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v2, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_4
    iget-object v2, v2, Le5/n4;->k:Landroid/widget/TextView;

    const v6, 0x7f1301be

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    if-nez v1, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_0
    iget-object v1, v3, Le5/n4;->r:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic t3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->s5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final t4(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->s0()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result v0

    int-to-double v0, v0

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getIsred()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selectedGift.isred"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getPrice()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getPrice()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    double-to-int v2, v0

    .line 4
    :cond_0
    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K2:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_1
    return v3
.end method

.method private static final t5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    .line 2
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    neg-int v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 p1, 0x28

    if-le v0, p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    const/4 v1, 0x0

    const-string v2, "chatInputBinding"

    if-nez p1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    iget-object p1, p1, Le5/p4;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 5
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Le5/p4;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object p2
.end method

.method private static final t6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->p0()Lkotlinx/coroutines/j2;

    .line 2
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p0, :cond_0

    const-string p0, "playerBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Le5/f3;->g:Le5/r4;

    iget-object p0, p0, Le5/r4;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->clearAnimation()V

    return-void
.end method

.method public static synthetic u3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->w6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final u4()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    return-void
.end method

.method private static final u5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lkotlin/Unit;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input_method"

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p0, :cond_0

    const-string p0, "chatInputBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Le5/p4;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private static final u6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->w4()V

    return-void
.end method

.method public static synthetic v3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->v6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final v4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y2:Lio/reactivex/disposables/c;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y2:Lio/reactivex/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    :cond_0
    return-void
.end method

.method private static final v5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lkotlin/Unit;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p0, :cond_0

    const-string p0, "chatInputBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Le5/p4;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final v6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->l7()V

    return-void
.end method

.method public static synthetic w3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->G6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final w4()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X2:I

    .line 2
    rem-int/lit8 v0, v0, 0x2

    .line 3
    sget-object v1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeScale:--mVideoScaleIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "----mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v1, :cond_0

    const-string v1, "pkPlayerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->b0(I)V

    return-void
.end method

.method private static final w5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lkotlin/Unit;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    const-string v0, "chatInputBinding"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    iget-object p1, p1, Le5/p4;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T1:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->K0(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/j2;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->u:Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->u0()Lcom/qennnsad/aknkaksd/data/websocket/j;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qennnsad/aknkaksd/data/websocket/j;->j(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/websocket/WsPublicMsgRequest;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/qennnsad/aknkaksd/data/websocket/WebSocketService;->H(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object p1, p1, Le5/p4;->h:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 6
    invoke-static {p0, p1, v1, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final w6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->O0()V

    return-void
.end method

.method public static synthetic x3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Y6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/t;)V

    return-void
.end method

.method private final x4()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H2:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->getItemCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f13032c

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final x5(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T1:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "chatInputBinding"

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez v0, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    iget-object v0, v0, Le5/p4;->h:Landroid/widget/EditText;

    const-string v5, "\u8bf4\u70b9\u4ec0\u4e48\u5427..."

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object v0, v0, Le5/p4;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    iget-object v0, v3, Le5/p4;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iput-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T1:Z

    goto :goto_2

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    iget-object v0, v0, Le5/p4;->h:Landroid/widget/EditText;

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u53d1\u9001\u5f39\u5e55\u4e3b\u64ad\u6536\u8d39100"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f1301c1

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/\u6761"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    iget-object v0, v0, Le5/p4;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez v0, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v3, v0

    :goto_1
    iget-object v0, v3, Le5/p4;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T1:Z

    :goto_2
    return-void
.end method

.method private static final x6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic y3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W4(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method private final y4()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->z5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M2:Ljava/lang/Runnable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M2:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private final y5()Z
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g2:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final y6()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->i:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->setScrollableLayoutListener(Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;)V

    .line 2
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I2:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->O()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->T()Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lb5/a;->d(Ljava/util/List;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I2:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->i:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I2:I

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->setCurrentItem(I)V

    return-void
.end method

.method public static synthetic z3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->q7(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method private final z4(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getInPkWith()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I6()V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getIsPkSender()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getInPkWith()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->R0(ZLjava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string p1, "pkPlayerManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->r(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->setPk(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBean;)V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private final z5()Z
    .locals 2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->f0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final z6()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v2, 0x0

    const-string v3, "playerBinding"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Le5/f3;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 3
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_1
    iget-object v5, v5, Le5/f3;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0a050d

    if-eq v6, v7, :cond_2

    .line 5
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0a03e4

    if-eq v6, v7, :cond_2

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0a05a1

    if-eq v6, v7, :cond_2

    const-string v6, "child"

    .line 7
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    iget-object v1, v1, Le5/f3;->r:Le5/m4;

    invoke-virtual {v1}, Le5/m4;->b()Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v4, "playerBinding.sidePanel.root"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, v1

    :goto_1
    iget-object v1, v2, Le5/f3;->j:Le5/d4;

    iget-object v1, v1, Le5/d4;->h:Lcom/opensource/svgaplayer/SVGAImageView;

    const-string v2, "playerBinding.playerContainer.roomSvga"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Le5/i;

    iget-object v1, v1, Le5/i;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->m()V

    .line 11
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Le5/i;

    iget-object v1, v1, Le5/i;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->setSwipeContentView(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public A0(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    .line 2
    new-instance v0, Lkotlin/Triple;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->T()Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    move-result-object v3

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1, v0}, Lg5/a;->e0(Lkotlin/Triple;)V

    .line 8
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F4()V

    return-void
.end method

.method public B4(Landroid/view/LayoutInflater;)Le5/i;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le5/i;->c(Landroid/view/LayoutInflater;)Le5/i;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected C0(Landroid/content/Intent;ZLandroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/content/Intent;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C0(Landroid/content/Intent;ZLandroid/os/Bundle;)V

    .line 2
    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->G2:Z

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    const-string v1, "district"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->N0(Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "EXTRA_PK_FINISHED_ON_THE_RIGHT"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I6()V

    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 9
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v3, :cond_2

    const-string v3, "pkPlayerManager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;ZZZILjava/lang/Object;)V

    .line 10
    :cond_3
    sget-object v3, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "xxx Parse Data. Is new Intent: %s"

    invoke-virtual {v3, v6, v5}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v6

    if-eqz p3, :cond_5

    const-string v2, "survivor"

    .line 13
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    const-string v6, "pos"

    .line 14
    invoke-virtual {p3, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I2:I

    const/4 v6, -0x1

    if-ne p3, v6, :cond_4

    .line 15
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I2:I

    :cond_4
    new-array p3, v4, [Ljava/lang/Object;

    aput-object v2, p3, v1

    const-string v6, "xxx Survivor: %s"

    .line 16
    invoke-virtual {v3, v6, p3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p3, v4, [Ljava/lang/Object;

    .line 17
    iget v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p3, v1

    const-string v4, "xxx Restored Pos: %s"

    invoke-virtual {v3, v4, p3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    move-object v6, v2

    :cond_5
    if-nez v2, :cond_6

    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_6

    const-string v2, "anchor"

    .line 20
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    .line 21
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p3, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_6
    if-eqz p2, :cond_8

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "On new intent. New ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Last ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", isPK: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p2, p3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 24
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I2:I

    .line 25
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p2

    iget p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I2:I

    invoke-virtual {p2, v6, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->v0(Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;I)V

    .line 26
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->D4()V

    .line 27
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y6()V

    .line 28
    :cond_7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 29
    :cond_8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E5()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->O()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 30
    :cond_9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->O()Ljava/util/List;

    move-result-object p1

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I2:I

    :cond_a
    :goto_1
    return-void
.end method

.method public final D6(Z)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected E2()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W6()V

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment$a;->a(Z)Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W2:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W2:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f0a02d6

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method protected E5()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final E6(ZLjava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "showInputLayout:%s"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "input_method"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "playerBinding"

    const-string v3, "chatInputBinding"

    const/4 v5, 0x0

    if-eqz p1, :cond_9

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_0
    iget-object p1, p1, Le5/p4;->h:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_2
    iget-object p1, p1, Le5/p4;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_3
    iget-object p1, p1, Le5/f3;->s:Le5/s4;

    iget-object p1, p1, Le5/s4;->l:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f010046

    .line 7
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 8
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v4, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    :cond_4
    iget-object v4, v4, Le5/f3;->s:Le5/s4;

    iget-object v4, v4, Le5/s4;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_5
    iget-object p1, p1, Le5/p4;->h:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 10
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_6
    iget-object p1, p1, Le5/p4;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 11
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_7
    iget-object p1, p1, Le5/p4;->h:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 12
    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 13
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move-object v5, p1

    :goto_0
    iget-object p1, v5, Le5/f3;->g:Le5/r4;

    iget-object p1, p1, Le5/r4;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_a
    iget-object p1, p1, Le5/f3;->g:Le5/r4;

    iget-object p1, p1, Le5/r4;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_b
    iget-object p1, p1, Le5/f3;->s:Le5/s4;

    iget-object p1, p1, Le5/s4;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_c

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/r0;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/r0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    :cond_c
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_d
    iget-object p1, p1, Le5/p4;->h:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_e
    iget-object p1, p1, Le5/p4;->i:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    move-object v5, p1

    :goto_1
    iget-object p1, v5, Le5/p4;->h:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_2
    return-void
.end method

.method protected F2(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V
    .locals 17
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "msg"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalRoomMsg-wsChatPublicMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v3, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const-string v5, "playerBinding"

    if-nez v3, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    iget-object v3, v3, Le5/f3;->q:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$y;

    invoke-direct {v7, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$y;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3
    instance-of v3, v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    const/4 v7, 0x1

    const-string v8, "chatAdapter"

    if-eqz v3, :cond_1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wsChatPublicMsg:-----roomid"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "wsChatPublicMsg:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v9}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    move-object v3, v1

    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getFly()Ljava/lang/String;

    move-result-object v9

    const-string v10, "FlyMsg"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 6
    invoke-direct {v0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q5(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)V

    goto/16 :goto_1

    .line 7
    :cond_1
    instance-of v3, v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;

    if-eqz v3, :cond_8

    const-string v3, "Enter room"

    .line 8
    invoke-virtual {v2, v3}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleData:\u8fdb\u5165\u623f\u95f4:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v9}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    move-object v2, v1

    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;->getLevelid()I

    move-result v3

    const/4 v9, 0x5

    if-lt v3, v9, :cond_3

    .line 10
    iget-object v3, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P2:Lcom/qennnsad/aknkaksd/util/danmu/c;

    if-nez v3, :cond_2

    const-string v3, "mLevelDanmuControl"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 11
    :cond_2
    new-instance v15, Lcom/qennnsad/aknkaksd/data/bean/Danmu;

    const-wide/16 v10, 0x0

    .line 12
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;->getLevelid()I

    move-result v12

    .line 13
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;->getClient_name()Ljava/lang/String;

    move-result-object v14

    .line 14
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;->getEffect_id()I

    move-result v16

    const-string v13, "Comment"

    move-object v9, v15

    move-object v6, v15

    move/from16 v15, v16

    .line 15
    invoke-direct/range {v9 .. v15}, Lcom/qennnsad/aknkaksd/data/bean/Danmu;-><init>(JILjava/lang/String;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v3, v6, v4}, Lcom/qennnsad/aknkaksd/util/danmu/c;->b(Lcom/qennnsad/aknkaksd/data/bean/Danmu;I)V

    .line 17
    :cond_3
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemWelcome;->getEffect_sound()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 18
    iget-object v2, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q:Lcom/qennnsad/aknkaksd/util/sound/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/util/sound/a;->d()V

    .line 19
    :cond_4
    iget-object v2, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    if-nez v2, :cond_5

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;->o(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V

    .line 20
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v1, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_6
    iget-object v1, v1, Le5/f3;->q:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    if-nez v2, :cond_7

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_7
    move-object v6, v2

    :goto_0
    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/presentation/ui/base/recycler/a;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    .line 21
    :cond_8
    instance-of v3, v1, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    if-eqz v3, :cond_9

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v1

    check-cast v9, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;

    invoke-virtual {v9}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getRoom_id()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return-void

    :cond_9
    :goto_1
    const-string v3, "wsChatPublicMsg-add"

    .line 23
    invoke-virtual {v2, v3}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roomid: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-----"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v2, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    if-nez v2, :cond_a

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_a
    invoke-virtual {v2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;->o(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V

    .line 25
    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->p2:Z

    if-eqz v1, :cond_d

    .line 26
    iget-object v1, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v1, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_b
    iget-object v1, v1, Le5/f3;->q:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/PubChatRecyclerView;

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    if-nez v2, :cond_c

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_2

    :cond_c
    move-object v6, v2

    :goto_2
    invoke-virtual {v6}, Lcom/qennnsad/aknkaksd/presentation/ui/base/recycler/a;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_d
    return-void
.end method

.method protected F5(Z)V
    .locals 0

    return-void
.end method

.method protected G1(Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/BlockTextView;

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/BlockMsg;->getDuration()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->r7(J)V

    return-void
.end method

.method public G2(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;)V
    .locals 8
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "sendGiftMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const-string v1, "Gift"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getRoom_id()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Wrong room id"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$c;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "giftAnimationUtil"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;->z(Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;ZZILjava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getShowChatMsg()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getShowChatMsg()Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "sendGiftMsg.showChatMsg"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F2(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getIsred()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_3

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->C:Landroid/widget/TextView;

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getAnchorBalance()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method protected G4(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E4()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->p:Z

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E5()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->y:Z

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v1, :cond_1

    const-string v1, "pkPlayerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->E()Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcast"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->y:Z

    .line 11
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;->m:Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;

    invoke-virtual {p1, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$a;->b(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method public final H4()Lcom/qennnsad/aknkaksd/util/e0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U:Lcom/qennnsad/aknkaksd/util/e0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "fanClubUtil"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected H6()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v0, :cond_0

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E5()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->v0(Z)V

    return-void
.end method

.method public bridge synthetic I(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->B4(Landroid/view/LayoutInflater;)Le5/i;

    move-result-object p1

    return-object p1
.end method

.method protected I1()I
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->s0()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected final I4()I
    .locals 1

    #iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S:I
    const/4 v0, 0x1
    return v0
.end method

.method protected J1()V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F4()V

    return-void
.end method

.method public final J4()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "msgUtils"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public K1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final K4()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sourceFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public L(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F4()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->A0(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected L0()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xc000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->J0()V

    .line 9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->o0()V

    return-void
.end method

.method protected L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    return-object v0
.end method

.method protected final L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected M1()J
    .locals 2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->e0()J

    move-result-wide v0

    return-wide v0
.end method

.method protected N1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->f0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected O1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getCurroomnum()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected P0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->l0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/u;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/u;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->f()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/r;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/r;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 6
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->k0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 7
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 8
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->o0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/m;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/m;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 9
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->m0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/o;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/o;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 10
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/y;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/y;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 11
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->U()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 12
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->c()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/s;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/s;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 13
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->j0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 14
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->b0()Lg5/a;

    move-result-object v1

    iget-object v1, v1, Lg5/a;->h:Lkotlinx/coroutines/flow/t;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/u;->e(Lkotlinx/coroutines/flow/t;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/x;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/x;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 16
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->T0()Lkotlinx/coroutines/j2;

    .line 17
    invoke-static {}, Lcom/qennnsad/aknkaksd/util/sound/a;->a()Lcom/qennnsad/aknkaksd/util/sound/a;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q:Lcom/qennnsad/aknkaksd/util/sound/a;

    .line 18
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->F0()V

    return-void
.end method

.method public P1()I
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->m0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPtid()I

    move-result v0

    return v0
.end method

.method protected final P6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;Z)V
    .locals 17
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "info"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v1, "supportFragmentManager"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->z0()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 7
    new-instance v11, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$v;

    invoke-direct {v11, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$v;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    new-instance v12, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;

    invoke-direct {v12, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$w;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    new-instance v13, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$x;

    move/from16 v1, p3

    invoke-direct {v13, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$x;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V

    const/4 v14, 0x0

    const/16 v15, 0x800

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    invoke-static/range {v2 .. v16}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/o;->d(Landroidx/fragment/app/FragmentManager;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public V6(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lb5/a;->p(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    .line 3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;->c(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    return-void
.end method

.method public final d6(Lcom/qennnsad/aknkaksd/util/e0;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/util/e0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U:Lcom/qennnsad/aknkaksd/util/e0;

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F2:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F2:Z

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->z5()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->H0(Z)Lkotlinx/coroutines/j2;

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->Z0()Lkotlinx/coroutines/j2;

    :cond_2
    return-void
.end method

.method protected h5(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 6
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v1, 0x0

    const-string v2, "playerBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/f3;->j:Le5/d4;

    iget-object v0, v0, Le5/d4;->i:Le5/m;

    iget-object v0, v0, Le5/m;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v4

    const-string v5, "info!!.avatar"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Le5/f3;->j:Le5/d4;

    iget-object v0, v0, Le5/d4;->i:Le5/m;

    iget-object v0, v0, Le5/m;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l1;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/l1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    .line 6
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    iget-object v3, v3, Le5/f3;->j:Le5/d4;

    iget-object v3, v3, Le5/d4;->i:Le5/m;

    iget-object v3, v3, Le5/m;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k1;

    invoke-direct {v4, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    iget-object p1, p1, Le5/f3;->j:Le5/d4;

    iget-object p1, p1, Le5/d4;->i:Le5/m;

    iget-object p1, p1, Le5/m;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Le5/f3;->j:Le5/d4;

    iget-object p1, p1, Le5/d4;->i:Le5/m;

    iget-object p1, p1, Le5/m;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final h6(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->S:I

    return-void
.end method

.method public i(Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V
    .locals 1
    .param p1    # Lio/github/rockerhieu/emojicon/emoji/Emojicon;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "emojicon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez v0, :cond_0

    const-string v0, "chatInputBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/p4;->h:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lio/github/rockerhieu/emojicon/f;->X(Landroid/widget/EditText;Lio/github/rockerhieu/emojicon/emoji/Emojicon;)V

    return-void
.end method

.method public final i6(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    return-void
.end method

.method public j(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->X()Z

    move-result p1

    return p1
.end method

.method public final j6(Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-void
.end method

.method public k(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->Z()Z

    move-result p1

    return p1
.end method

.method protected final k6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->n()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    return-void
.end method

.method protected n0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/presentation/common/l<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->k6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "broadcast"

    .line 1
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N:Lcom/google/gson/Gson;

    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->w2(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F4()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->v4()V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R5()V

    .line 3
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 4
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->onDestroy()V

    return-void
.end method

.method public onEmojiconBackspaceClicked(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez p1, :cond_0

    const-string p1, "chatInputBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Le5/p4;->h:Landroid/widget/EditText;

    invoke-static {p1}, Lio/github/rockerhieu/emojicon/f;->W(Landroid/widget/EditText;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->b:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->b:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->pause()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->c:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->c:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->pause()V

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/im/freechat/sdk/SDKManager;->y(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->E5()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f010023

    const v1, 0x7f010024

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x2:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->N0(ZZ)V

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->b:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->b:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->b:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->k()V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->c:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->c:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->c:Lmaster/flame/danmaku/ui/widget/DanmakuView;

    invoke-virtual {v0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->k()V

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N4()V

    .line 10
    invoke-static {v2}, Lcom/im/freechat/sdk/SDKManager;->y(Z)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->M()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->i:Lcom/qennnsad/aknkaksd/util/ScrollableLayout;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getCurrentItem()I

    move-result v0

    const-string v1, "pos"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L1()Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    move-result-object v0

    const-string v1, "survivor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U2:Z

    return-void
.end method

.method protected p1(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "ptid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->X0(Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method protected final p7()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "pkPlayerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->u(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F2:Z

    return-void
.end method

.method protected q1(Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f;

    invoke-direct {v1, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/websocket/ErrorMsg;)V

    const-string p1, "\u91cd\u65b0\u7f16\u8f91"

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/q;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/q;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method protected q2(Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->V0(Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;)V

    return-void
.end method

.method protected r0()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "CheckResult"
        }
    .end annotation

    const v0, 0x7f0a0400

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Le5/n4;->a(Landroid/view/View;)Le5/n4;

    move-result-object v0

    const-string v1, "bind(findViewById(R.id.layout_gift))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->K:Le5/n4;

    const v0, 0x7f0a050c

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Le5/f3;->a(Landroid/view/View;)Le5/f3;

    move-result-object v0

    const-string v1, "bind(findViewById(R.id.player))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const v0, 0x7f0a05b9

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Le5/p4;->a(Landroid/view/View;)Le5/p4;

    move-result-object v0

    const-string v1, "bind(findViewById(R.id.room_ll_chat_bar))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P4()V

    .line 5
    new-instance v0, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    .line 6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const-string v2, "playerBinding"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    iget-object v1, v1, Le5/f3;->b:Le5/o4;

    iget-object v1, v1, Le5/o4;->b:Landroid/widget/RelativeLayout;

    const-string v4, "playerBinding.animations.roomLiveShowAnimLayout"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    iget-object v4, v4, Le5/f3;->j:Le5/d4;

    iget-object v4, v4, Le5/d4;->h:Lcom/opensource/svgaplayer/SVGAImageView;

    const-string v5, "playerBinding.playerContainer.roomSvga"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v5, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_2
    iget-object v5, v5, Le5/f3;->d:Le5/q4;

    iget-object v5, v5, Le5/q4;->d:Landroid/widget/LinearLayout;

    const-string v6, "playerBinding.giftActionsContainer.roomLlGiftBar"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$f;

    invoke-direct {v6, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;-><init>(Landroid/widget/RelativeLayout;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    .line 10
    new-instance v0, Lcom/qennnsad/aknkaksd/util/animations/f;

    .line 11
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    const-string v4, "sourceFactory"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_3
    iget-object v5, v5, Le5/f3;->i:Le5/u3;

    iget-object v5, v5, Le5/u3;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;

    const-string v6, "playerBinding.peerageAni\u2026iner.roomPeerageLoginInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v6, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_4
    iget-object v6, v6, Le5/f3;->i:Le5/u3;

    iget-object v6, v6, Le5/u3;->d:Lcom/opensource/svgaplayer/SVGAImageView;

    const-string v7, "playerBinding.peerageAni\u2026iner.roomSvgaPeerageLogin"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$g;

    invoke-direct {v7, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/qennnsad/aknkaksd/util/animations/f;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;Lcom/opensource/svgaplayer/SVGAImageView;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M:Lcom/qennnsad/aknkaksd/util/animations/f;

    .line 15
    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/a;->f(Landroid/app/Activity;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 17
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    iget-object v0, v0, Le5/i;->g:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->setIsEnabled(Z)V

    .line 18
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->J()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/i;

    invoke-virtual {v0}, Le5/i;->b()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/i;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v5}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 19
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;

    .line 20
    iget-object v7, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    const-string v5, "localDataManager"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v8, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v4, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_5
    invoke-virtual {v4}, Le5/f3;->b()Landroid/widget/RelativeLayout;

    move-result-object v9

    const-string v2, "playerBinding.root"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 23
    new-instance v11, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$h;

    invoke-direct {v11, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$h;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/h;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const v0, 0x7f010041

    .line 24
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    const-string v4, "loadAnimation(this, R.anim.shake)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Z2:Landroid/view/animation/Animation;

    .line 25
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->a3:Landroid/view/animation/Animation;

    .line 26
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Y2:Landroid/view/animation/Animation;

    const/4 v0, 0x3

    new-array v2, v0, [Landroid/view/animation/Animation;

    .line 27
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Z2:Landroid/view/animation/Animation;

    if-nez v4, :cond_6

    const-string v4, "shakeGameAnimation"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_6
    aput-object v4, v2, v1

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Y2:Landroid/view/animation/Animation;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->a3:Landroid/view/animation/Animation;

    const-string v6, "shakeFanClubAnimation"

    if-nez v4, :cond_7

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_7
    const/4 v7, 0x2

    aput-object v4, v2, v7

    :goto_0
    if-ge v1, v0, :cond_9

    .line 28
    aget-object v4, v2, v1

    if-eqz v4, :cond_8

    .line 29
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 v8, -0x1

    .line 30
    invoke-virtual {v4, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 31
    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->a3:Landroid/view/animation/Animation;

    if-nez v0, :cond_a

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_a
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 33
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->m5()V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0253

    .line 35
    invoke-static {v5}, Lio/github/rockerhieu/emojicon/f;->Y(Z)Lio/github/rockerhieu/emojicon/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 36
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    const-string v1, "chatInputBinding"

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_b
    iget-object v0, v0, Le5/p4;->c:Landroid/widget/ImageView;

    const-string v2, "chatInputBinding.emojiBtn"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/f1;->b(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    .line 37
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x32

    .line 38
    invoke-virtual {v0, v4, v5, v2}, Lio/reactivex/rxjava3/core/g0;->M6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    .line 39
    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f1;

    invoke-direct {v6, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/f1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v6}, Lio/reactivex/rxjava3/core/g0;->a6(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;

    .line 40
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez v0, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_c
    iget-object v0, v0, Le5/p4;->d:Landroid/widget/Button;

    const-string v6, "chatInputBinding.roomBtnSend"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/f1;->b(Landroid/view/View;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v2}, Lio/reactivex/rxjava3/core/g0;->M6(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    .line 41
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g1;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/g1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/g0;->i2(Lq7/r;)Lio/reactivex/rxjava3/core/g0;

    move-result-object v0

    .line 42
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e1;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/e1;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/g0;->a6(Lq7/g;)Lio/reactivex/rxjava3/disposables/f;

    .line 43
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->J:Le5/p4;

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    move-object v3, v0

    :goto_1
    iget-object v0, v3, Le5/p4;->e:Landroid/widget/RelativeLayout;

    const-string v1, "chatInputBinding.roomDanmu"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d0;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/d0;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/f1;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 44
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->l6()V

    .line 45
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y6()V

    .line 46
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->k5()V

    return-void
.end method

.method protected r1(Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;)V
    .locals 9
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "bleMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->getCost()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->getDuration()I

    move-result v1

    const/16 v2, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    .line 3
    sget-object v3, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const-string v4, "BleDevice"

    invoke-virtual {v3, v4}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "---oldcost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "----time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-WsBleDeviceMsg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x1:I

    if-lt v0, v5, :cond_1

    if-le v1, v2, :cond_0

    add-int/lit16 v1, v1, -0x3e8

    .line 6
    :cond_0
    invoke-virtual {v3, v4}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->x1:I

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y1:Ljava/lang/Runnable;

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Q:Lcom/qennnsad/aknkaksd/util/sound/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/WsBleDeviceMsg;->getSound()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/util/sound/a;->c(I)V

    :cond_1
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b3:Z

    return-void
.end method

.method protected r2(Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I6()V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;->sender_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 4
    iget-wide v2, p1, Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;->receiver_id:J

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lcom/qennnsad/aknkaksd/data/bean/pk/JoinPkSuccessMsg;->sender_id:J

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v1, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->R0(ZLjava/lang/String;)V

    return-void
.end method

.method protected s1(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Y5()V

    :cond_0
    return-void
.end method

.method protected s2(I)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->C:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected t1(Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Audience data received: %s"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->C0(Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    const/4 v1, 0x0

    const-string v2, "playerBinding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;->getSeat_count()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->v:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/LiveAudienceListMsg;->getTotalCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected t2(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageListEvent;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageListEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageListEvent;->getMessage()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L5(Ljava/util/List;)V

    return-void
.end method

.method protected u1(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "peerageLogin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "svga peerage login: mount name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;->getMount_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M:Lcom/qennnsad/aknkaksd/util/animations/f;

    if-nez v0, :cond_0

    const-string v0, "peerageAnimationUtil"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1, v2}, Lcom/qennnsad/aknkaksd/util/animations/f;->k(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;Z)V

    return-void
.end method

.method protected u2(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W6()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "interaction.deny"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    const-string v0, "interaction.close"

    goto :goto_0

    :sswitch_2
    const-string v0, "interactionDisconnect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const p1, 0x7f1302bb

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    goto :goto_1

    :sswitch_3
    const-string v0, "interaction.cancel"

    goto :goto_0

    .line 4
    :goto_1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O4()V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez p1, :cond_1

    const-string p1, "pkPlayerManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v3, p1

    :goto_2
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->E()Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->y0()Z

    move-result v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getCoinsSender()I

    move-result v0

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getCoinsReceiver()I

    move-result v0

    .line 7
    :goto_3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;->getInteractionTime()I

    move-result p1

    .line 8
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->k:Lx4/a;

    .line 9
    sget-object v4, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_PK_BATTLE_END:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O1()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    .line 13
    invoke-virtual {v3, v4, v5}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5960922a -> :sswitch_3
        -0x583aebb2 -> :sswitch_2
        0x266d431c -> :sswitch_1
        0x5c146468 -> :sswitch_0
    .end sparse-switch
.end method

.method protected v1(ZLjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "rankstr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    .line 2
    iget-object v1, v0, Le5/s4;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, v0, Le5/s4;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p2, v0, Le5/s4;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 5
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T2:Z

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8ba1\u8d39\u4ef7\u683c:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;->b()Lcom/qennnsad/aknkaksd/BaseBeautyApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getMoney()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u91d1\u5e01/\u5206\u949f"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, v0, Le5/s4;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, v0, Le5/s4;->y:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v2, v0, Le5/s4;->y:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v2

    sub-long/2addr p1, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr p1, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    div-long/2addr p1, v2

    long-to-int p2, p1

    .line 10
    iget-object p1, v0, Le5/s4;->y:Landroid/widget/Chronometer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":%s"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 11
    iget-object p1, v0, Le5/s4;->y:Landroid/widget/Chronometer;

    invoke-virtual {p1}, Landroid/widget/Chronometer;->start()V

    .line 12
    iput-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T2:Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, v0, Le5/s4;->e:Landroid/widget/TextView;

    const-string p2, "\u6b63\u5728\u4f7f\u7528\u63a8\u5e7f\u65f6\u95f4"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, v0, Le5/s4;->y:Landroid/widget/Chronometer;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Chronometer;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected v2(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W6()V

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;->Draw:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3f17d600

    if-eq v1, v2, :cond_3

    const v2, 0x5c1493a0

    if-eq v1, v2, :cond_2

    const v2, 0x5c182d71

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "interaction.lose"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;->Loss:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;

    goto :goto_0

    :cond_2
    const-string v1, "interaction.draw"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    const-string v1, "interaction.win"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;->Win:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const/4 v1, 0x0

    if-nez p1, :cond_5

    const-string p1, "pkPlayerManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_5
    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->f0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/MatchResult;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_6
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    return-void
.end method

.method public w(I)V
    .locals 6

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player Item changed. New position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Current Anchors List size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->O()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Stopping all actions for previous player item"

    .line 2
    invoke-virtual {v0, v3, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "pkPlayerManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->F0()V

    .line 4
    invoke-direct {p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e6(Z)V

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b6()V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->C2()V

    .line 7
    invoke-virtual {p0, v2, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->N0(ZZ)V

    .line 8
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 10
    iput-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V2:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W2:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W2:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 13
    iput-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W2:Lcom/qennnsad/aknkaksd/presentation/ui/room/RoomFinishedFragment;

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O2:Lcom/qennnsad/aknkaksd/util/danmu/a;

    if-nez v1, :cond_3

    const-string v1, "mDanmuControl"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/danmu/a;->o()V

    .line 15
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->P2:Lcom/qennnsad/aknkaksd/util/danmu/c;

    if-nez v1, :cond_4

    const-string v1, "mLevelDanmuControl"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_4
    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/util/danmu/c;->j()V

    .line 16
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->W6()V

    .line 17
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->b1:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f;

    if-nez v1, :cond_5

    const-string v1, "chatAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/base/recycler/a;->l(Ljava/util/List;)V

    const/4 v1, 0x1

    .line 18
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->X2:I

    const/4 v4, 0x2

    .line 19
    invoke-static {p0, v2, v3, v4, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->F6(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 20
    iput-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->N2:Z

    .line 21
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g1:Landroid/os/Handler;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->d3:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->Y5()V

    const-wide/16 v4, 0x0

    .line 23
    invoke-direct {p0, v4, v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->r7(J)V

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notify ViewModel about new position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->F0(I)Lkotlinx/coroutines/j2;

    .line 26
    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O6(Z)V

    .line 27
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_6

    const-string p1, "playerBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v3, p1

    :goto_0
    iget-object p1, v3, Le5/f3;->r:Le5/m4;

    iget-object p1, p1, Le5/m4;->c:Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/carousel/LayoutCarousel;->g()V

    .line 28
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->z6()V

    return-void
.end method

.method protected w1(Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalRoomMsg-WsRoomAd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    .line 3
    iget-object v1, v0, Le5/s4;->x:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;->getRollmsg_content()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/ScrollingText;->setTextList(Ljava/util/List;)V

    .line 4
    iget-object v0, v0, Le5/s4;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->j0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SystemMsg;->getRoom_ad()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected w2(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pkPlayerManager"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->y0()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->I0(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;Z)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->R:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->r(Lcom/qennnsad/aknkaksd/data/bean/pk/PkBroadcastMsg;)V

    .line 4
    :goto_2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->d0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->z5()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->G2:Z

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->H0(Z)Lkotlinx/coroutines/j2;

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->y4()V

    return-void
.end method

.method protected x1(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "chargeTimeRoomMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez v0, :cond_0

    const-string v0, "playerBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Le5/f3;->s:Le5/s4;

    iget-object v0, v0, Le5/s4;->C:Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->O:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChargeTimeRoomMsg;->getBeanoriginal()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected x2(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "localRoomMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/WebsocketActivity;->x2(Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->H2:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->z0()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;->r(Z)V

    :goto_0
    return-void
.end method

.method protected y1(I)V
    .locals 3

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update coine balance from socket. Coins spent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->L4()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->s0()Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result v1

    sub-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->setCoinbalance(I)V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->j:Lg5/a;

    invoke-virtual {p1, v0}, Lg5/a;->U(Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V

    :cond_0
    return-void
.end method

.method protected z1(I)V
    .locals 1

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->I:Le5/f3;

    if-nez p1, :cond_0

    const-string p1, "playerBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Le5/f3;->s:Le5/s4;

    iget-object p1, p1, Le5/s4;->e:Landroid/widget/TextView;

    const-string v0, "\u6b63\u5728\u4f7f\u7528\u63a8\u5e7f\u65f6\u95f4"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
