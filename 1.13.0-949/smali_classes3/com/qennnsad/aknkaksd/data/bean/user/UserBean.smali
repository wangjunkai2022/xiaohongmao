.class public final Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
.super Ljava/lang/Object;
.source "UserBean.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008x\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\u00bb\u0001B\u00c7\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0005\u0012\u0006\u0010\u001a\u001a\u00020\u0003\u0012\u0006\u0010\u001b\u001a\u00020\u0003\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u0005\u0012\u0006\u0010$\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\u0005\u0012\u0006\u0010&\u001a\u00020\'\u0012\u0008\u0008\u0002\u0010(\u001a\u00020\'\u0012\u0008\u0008\u0002\u0010)\u001a\u00020\'\u0012\u0008\u0008\u0002\u0010*\u001a\u00020\'\u0012\u0008\u0008\u0002\u0010+\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010,\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010-\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010.\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010/\u001a\u00020\'\u0012\u0008\u0008\u0002\u00100\u001a\u00020\'\u0012\u0008\u0008\u0002\u00101\u001a\u00020\'\u0012\u0008\u0008\u0002\u00102\u001a\u00020\'\u0012\u0008\u0008\u0002\u00103\u001a\u00020\'\u0012\u0008\u0008\u0002\u00104\u001a\u00020\'\u0012\u0008\u0008\u0002\u00105\u001a\u00020\'\u0012\u0008\u0008\u0002\u00106\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u00107\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u00108\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u00109\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010:\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010;\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010>\u001a\u00020\u0005\u0012\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020@0\u0012\u0012\u0006\u0010A\u001a\u00020\u0003\u0012\u0006\u0010B\u001a\u00020\u0003\u0012\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020D0\u0012\u00a2\u0006\u0002\u0010EJ\t\u0010x\u001a\u00020\u0003H\u00c6\u0003J\t\u0010y\u001a\u00020\u0003H\u00c6\u0003J\t\u0010z\u001a\u00020\u0005H\u00c6\u0003J\t\u0010{\u001a\u00020\u0003H\u00c6\u0003J\t\u0010|\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0012H\u00c6\u0003J\t\u0010~\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u007f\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0080\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0081\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0082\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0083\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0084\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0085\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0086\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u008d\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0091\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0092\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0093\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u0094\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u0095\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u0096\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u0097\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u0099\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u009b\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u009c\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u009d\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u009e\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u009f\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u00a0\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u00a1\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u00a2\u0001\u001a\u00020\'H\u00c6\u0003J\n\u0010\u00a3\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u00a4\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00a5\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u00a6\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u00a7\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u00a8\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u00a9\u0001\u001a\u00020\u0005H\u00c6\u0003J\u0011\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010jJ\u0011\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010jJ\n\u0010\u00ac\u0001\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u00ad\u0001\u001a\u0008\u0012\u0004\u0012\u00020@0\u0012H\u00c6\u0003J\n\u0010\u00ae\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00af\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00b0\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u00b1\u0001\u001a\u0008\u0012\u0004\u0012\u00020D0\u0012H\u00c6\u0003J\n\u0010\u00b2\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00b3\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00b4\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0088\u0005\u0010\u00b5\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00052\u0008\u0008\u0002\u0010 \u001a\u00020\u00052\u0008\u0008\u0002\u0010!\u001a\u00020\u00052\u0008\u0008\u0002\u0010\"\u001a\u00020\u00032\u0008\u0008\u0002\u0010#\u001a\u00020\u00052\u0008\u0008\u0002\u0010$\u001a\u00020\u00032\u0008\u0008\u0002\u0010%\u001a\u00020\u00052\u0008\u0008\u0002\u0010&\u001a\u00020\'2\u0008\u0008\u0002\u0010(\u001a\u00020\'2\u0008\u0008\u0002\u0010)\u001a\u00020\'2\u0008\u0008\u0002\u0010*\u001a\u00020\'2\u0008\u0008\u0002\u0010+\u001a\u00020\u00052\u0008\u0008\u0002\u0010,\u001a\u00020\u00052\u0008\u0008\u0002\u0010-\u001a\u00020\u00052\u0008\u0008\u0002\u0010.\u001a\u00020\u00052\u0008\u0008\u0002\u0010/\u001a\u00020\'2\u0008\u0008\u0002\u00100\u001a\u00020\'2\u0008\u0008\u0002\u00101\u001a\u00020\'2\u0008\u0008\u0002\u00102\u001a\u00020\'2\u0008\u0008\u0002\u00103\u001a\u00020\'2\u0008\u0008\u0002\u00104\u001a\u00020\'2\u0008\u0008\u0002\u00105\u001a\u00020\'2\u0008\u0008\u0002\u00106\u001a\u00020\u00052\u0008\u0008\u0002\u00107\u001a\u00020\u00052\u0008\u0008\u0002\u00108\u001a\u00020\u00052\u0008\u0008\u0002\u00109\u001a\u00020\u00052\u0008\u0008\u0002\u0010:\u001a\u00020\u00052\u0008\u0008\u0002\u0010;\u001a\u00020\u00052\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010>\u001a\u00020\u00052\u000e\u0008\u0002\u0010?\u001a\u0008\u0012\u0004\u0012\u00020@0\u00122\u0008\u0008\u0002\u0010A\u001a\u00020\u00032\u0008\u0008\u0002\u0010B\u001a\u00020\u00032\u000e\u0008\u0002\u0010C\u001a\u0008\u0012\u0004\u0012\u00020D0\u0012H\u00c6\u0001\u00a2\u0006\u0003\u0010\u00b6\u0001J\u0015\u0010\u00b7\u0001\u001a\u00020\'2\t\u0010\u00b8\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\n\u0010\u00b9\u0001\u001a\u00020\u0005H\u00d6\u0001J\n\u0010\u00ba\u0001\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0017\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u0011\u0010\u001e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010IR\u0011\u0010\u001f\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010GR\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010IR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010IR\u0011\u0010\u0018\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010GR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010IR\u0011\u0010\u001a\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010IR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010IR\u0011\u0010\u001b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010IR\u0011\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010IR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010IR\u0016\u0010\u0016\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u0010IR\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010VR\u0011\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010IR\u0011\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010IR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010IR\u0016\u00107\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010GR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010IR\u0016\u00106\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010GR\u0016\u0010&\u001a\u00020\'8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\\R\u0011\u0010!\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010GR\u0016\u0010%\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010GR\u0011\u0010/\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\\R\u0011\u0010 \u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010GR\u0011\u00101\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\\R\u0011\u00100\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\\R\u0011\u0010-\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010GR\u0011\u0010.\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010GR\u0011\u00105\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010\\R\u0011\u00103\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\\R\u0011\u00104\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\\R\u0011\u0010*\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\\R\u0011\u0010,\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010GR\u0011\u0010+\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010GR\u0011\u00102\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\\R\u0011\u0010(\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008]\u0010\\R\u0011\u0010)\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010\\R\u0011\u0010B\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008_\u0010IR\u0011\u0010#\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010GR\u0017\u0010?\u001a\u0008\u0012\u0004\u0012\u00020@0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010VR\u0016\u0010$\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008b\u0010IR\u0011\u0010\"\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008c\u0010IR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008d\u0010IR\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008e\u0010GR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008f\u0010IR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008g\u0010IR\u0016\u0010>\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008h\u0010GR\u001a\u0010<\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010k\u001a\u0004\u0008i\u0010jR\u001a\u0010=\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010k\u001a\u0004\u0008l\u0010jR\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020D0\u00128\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008m\u0010VR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008n\u0010GR\u0016\u00109\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008o\u0010GR\u0016\u0010;\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008p\u0010GR\u0016\u00108\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008q\u0010GR\u0016\u0010:\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008r\u0010GR\u0011\u0010\u0010\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008s\u0010IR\u0011\u0010\u0019\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008t\u0010GR\u0011\u0010\u001c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008u\u0010IR\u0011\u0010\u001d\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008v\u0010IR\u0011\u0010A\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008w\u0010I\u00a8\u0006\u00bc\u0001"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "",
        "id",
        "",
        "sex",
        "",
        "intro",
        "nickname",
        "city",
        "avatartime",
        "birthday",
        "professional",
        "emotion",
        "province",
        "peerage_id",
        "avatar",
        "snap",
        "follow_users",
        "",
        "followers_cnt",
        "followees_cnt",
        "emceelevel",
        "familyLevel",
        "age",
        "beanorignal",
        "spendcoin",
        "broadcasting",
        "curroomnum",
        "toy_enabled",
        "toy_status",
        "approveid",
        "approvetype",
        "is_attention",
        "isHit",
        "name_card",
        "lob_no",
        "mysteryId",
        "isMystery",
        "isGuest",
        "",
        "isanchor",
        "iswithdraw",
        "is_lounge_vip",
        "is_subscribe_notify",
        "is_single_conversation",
        "is_group_conversation",
        "is_im",
        "is_anchor_rank",
        "is_family",
        "is_deposit_chip",
        "is_withdraw_chip",
        "is_legend",
        "is_legend_withdraw",
        "is_join_peerage",
        "isAdmin",
        "interactionReady",
        "showLevel",
        "showFamilyLevel",
        "showPeerage",
        "showJapanese",
        "realtimeTranslationEnable",
        "realtimeTranslationType",
        "realtimeSubtitlesOn",
        "menus",
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;",
        "username",
        "iswithdraw_promotion",
        "settings",
        "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V",
        "getAge",
        "()I",
        "getApproveid",
        "()Ljava/lang/String;",
        "getApprovetype",
        "getAvatar",
        "getAvatartime",
        "getBeanorignal",
        "getBirthday",
        "getBroadcasting",
        "getCity",
        "getCurroomnum",
        "getEmceelevel",
        "getEmotion",
        "getFamilyLevel",
        "getFollow_users",
        "()Ljava/util/List;",
        "getFollowees_cnt",
        "getFollowers_cnt",
        "getId",
        "getInteractionReady",
        "getIntro",
        "()Z",
        "getIsanchor",
        "getIswithdraw",
        "getIswithdraw_promotion",
        "getLob_no",
        "getMenus",
        "getMysteryId",
        "getName_card",
        "getNickname",
        "getPeerage_id",
        "getProfessional",
        "getProvince",
        "getRealtimeSubtitlesOn",
        "getRealtimeTranslationEnable",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getRealtimeTranslationType",
        "getSettings",
        "getSex",
        "getShowFamilyLevel",
        "getShowJapanese",
        "getShowLevel",
        "getShowPeerage",
        "getSnap",
        "getSpendcoin",
        "getToy_enabled",
        "getToy_status",
        "getUsername",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component3",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "component38",
        "component39",
        "component4",
        "component40",
        "component41",
        "component42",
        "component43",
        "component44",
        "component45",
        "component46",
        "component47",
        "component48",
        "component49",
        "component5",
        "component50",
        "component51",
        "component52",
        "component53",
        "component54",
        "component55",
        "component56",
        "component57",
        "component58",
        "component59",
        "component6",
        "component60",
        "component61",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "MenuBean",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final age:I

.field private final approveid:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final approvetype:I

.field private final avatar:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final avatartime:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final beanorignal:I

.field private final birthday:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final broadcasting:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final city:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final curroomnum:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final emceelevel:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final emotion:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final familyLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "family_level"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final follow_users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final followees_cnt:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final followers_cnt:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final interactionReady:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interaction_ready"
    .end annotation
.end field

.field private final intro:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final isAdmin:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_admin"
    .end annotation
.end field

.field private final isGuest:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guest"
    .end annotation
.end field

.field private final isHit:I

.field private final isMystery:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_mystery"
    .end annotation
.end field

.field private final is_anchor_rank:Z

.field private final is_attention:I

.field private final is_deposit_chip:Z

.field private final is_family:Z

.field private final is_group_conversation:I

.field private final is_im:I

.field private final is_join_peerage:Z

.field private final is_legend:Z

.field private final is_legend_withdraw:Z

.field private final is_lounge_vip:Z

.field private final is_single_conversation:I

.field private final is_subscribe_notify:I

.field private final is_withdraw_chip:Z

.field private final isanchor:Z

.field private final iswithdraw:Z

.field private final iswithdraw_promotion:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final lob_no:I

.field private final menus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final mysteryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mystery_id"
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final name_card:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final nickname:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final peerage_id:I

.field private final professional:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final province:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final realtimeSubtitlesOn:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realtime_subtitles_on"
    .end annotation
.end field

.field private final realtimeTranslationEnable:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realtime_translation_enable"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final realtimeTranslationType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realtime_translation_type"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final settings:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "setup"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final sex:I

.field private final showFamilyLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_family_level"
    .end annotation
.end field

.field private final showJapanese:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_japanese"
    .end annotation
.end field

.field private final showLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_level"
    .end annotation
.end field

.field private final showPeerage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_peerage"
    .end annotation
.end field

.field private final snap:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final spendcoin:I

.field private final toy_enabled:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final toy_status:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final username:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p14    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p55    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p56    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p58    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p59    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p60    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p61    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IZZZZIIIIZZZZZZZIIIIII",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v0, p18

    const-string v0, "id"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intro"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nickname"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatartime"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "birthday"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "professional"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emotion"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "province"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snap"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "follow_users"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followers_cnt"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followees_cnt"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emceelevel"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "familyLevel"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcasting"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "curroomnum"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toy_enabled"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toy_status"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "approveid"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name_card"

    move-object/from16 v15, p30

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mysteryId"

    move-object/from16 v15, p32

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menus"

    move-object/from16 v15, p58

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    move-object/from16 v15, p59

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iswithdraw_promotion"

    move-object/from16 v15, p60

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v15, p61

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p18

    .line 2
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->id:Ljava/lang/String;

    move/from16 v1, p2

    .line 3
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->sex:I

    .line 4
    iput-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->intro:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->nickname:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->city:Ljava/lang/String;

    .line 7
    iput-object v5, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatartime:Ljava/lang/String;

    .line 8
    iput-object v6, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->birthday:Ljava/lang/String;

    .line 9
    iput-object v7, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->professional:Ljava/lang/String;

    .line 10
    iput-object v8, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emotion:Ljava/lang/String;

    .line 11
    iput-object v9, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->province:Ljava/lang/String;

    move/from16 v1, p11

    .line 12
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->peerage_id:I

    .line 13
    iput-object v10, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatar:Ljava/lang/String;

    .line 14
    iput-object v11, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->snap:Ljava/lang/String;

    .line 15
    iput-object v12, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->follow_users:Ljava/util/List;

    .line 16
    iput-object v13, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followers_cnt:Ljava/lang/String;

    .line 17
    iput-object v14, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followees_cnt:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emceelevel:Ljava/lang/String;

    .line 19
    iput-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->familyLevel:Ljava/lang/String;

    move/from16 v1, p19

    .line 20
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->age:I

    move/from16 v1, p20

    .line 21
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->beanorignal:I

    move/from16 v1, p21

    .line 22
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->spendcoin:I

    move-object/from16 v1, p22

    move-object/from16 v2, p23

    .line 23
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->broadcasting:Ljava/lang/String;

    .line 24
    iput-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->curroomnum:Ljava/lang/String;

    move-object/from16 v1, p24

    move-object/from16 v2, p25

    .line 25
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_enabled:Ljava/lang/String;

    .line 26
    iput-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_status:Ljava/lang/String;

    move-object/from16 v1, p26

    move-object/from16 v2, p30

    .line 27
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approveid:Ljava/lang/String;

    move/from16 v1, p27

    .line 28
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approvetype:I

    move/from16 v1, p28

    .line 29
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_attention:I

    move/from16 v1, p29

    .line 30
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isHit:I

    .line 31
    iput-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->name_card:Ljava/lang/String;

    move/from16 v1, p31

    .line 32
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->lob_no:I

    move-object/from16 v1, p32

    move-object/from16 v2, p58

    .line 33
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->mysteryId:Ljava/lang/String;

    move/from16 v1, p33

    .line 34
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isMystery:I

    move/from16 v1, p34

    .line 35
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest:Z

    move/from16 v1, p35

    .line 36
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isanchor:Z

    move/from16 v1, p36

    .line 37
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw:Z

    move/from16 v1, p37

    .line 38
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_lounge_vip:Z

    move/from16 v1, p38

    .line 39
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_subscribe_notify:I

    move/from16 v1, p39

    .line 40
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_single_conversation:I

    move/from16 v1, p40

    .line 41
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_group_conversation:I

    move/from16 v1, p41

    .line 42
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_im:I

    move/from16 v1, p42

    .line 43
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_anchor_rank:Z

    move/from16 v1, p43

    .line 44
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_family:Z

    move/from16 v1, p44

    .line 45
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_deposit_chip:Z

    move/from16 v1, p45

    .line 46
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_withdraw_chip:Z

    move/from16 v1, p46

    .line 47
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend:Z

    move/from16 v1, p47

    .line 48
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend_withdraw:Z

    move/from16 v1, p48

    .line 49
    iput-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_join_peerage:Z

    move/from16 v1, p49

    .line 50
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isAdmin:I

    move/from16 v1, p50

    .line 51
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->interactionReady:I

    move/from16 v1, p51

    .line 52
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showLevel:I

    move/from16 v1, p52

    .line 53
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showFamilyLevel:I

    move/from16 v1, p53

    .line 54
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showPeerage:I

    move/from16 v1, p54

    .line 55
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showJapanese:I

    move-object/from16 v1, p55

    .line 56
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationEnable:Ljava/lang/Integer;

    move-object/from16 v1, p56

    .line 57
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationType:Ljava/lang/Integer;

    move/from16 v1, p57

    .line 58
    iput v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeSubtitlesOn:I

    .line 59
    iput-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->menus:Ljava/util/List;

    move-object/from16 v1, p59

    move-object/from16 v2, p60

    .line 60
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->username:Ljava/lang/String;

    .line 61
    iput-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw_promotion:Ljava/lang/String;

    move-object/from16 v1, p61

    .line 62
    iput-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->settings:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 65

    move/from16 v0, p62

    move/from16 v1, p63

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_0

    const-string v2, "0"

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object/from16 v12, p9

    :goto_0
    and-int/lit16 v2, v0, 0x400

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    move/from16 v14, p11

    :goto_1
    const/high16 v2, 0x40000

    and-int v4, v0, v2

    if-eqz v4, :cond_2

    const/16 v22, 0x0

    goto :goto_2

    :cond_2
    move/from16 v22, p19

    :goto_2
    const/high16 v4, 0x80000

    and-int v5, v0, v4

    if-eqz v5, :cond_3

    const/16 v23, 0x0

    goto :goto_3

    :cond_3
    move/from16 v23, p20

    :goto_3
    const/high16 v5, 0x100000

    and-int v6, v0, v5

    if-eqz v6, :cond_4

    const/16 v24, 0x0

    goto :goto_4

    :cond_4
    move/from16 v24, p21

    :goto_4
    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_5

    const/16 v30, 0x0

    goto :goto_5

    :cond_5
    move/from16 v30, p27

    :goto_5
    const/high16 v6, 0x8000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_6

    const/16 v31, 0x0

    goto :goto_6

    :cond_6
    move/from16 v31, p28

    :goto_6
    const/high16 v6, 0x10000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_7

    const/16 v32, 0x0

    goto :goto_7

    :cond_7
    move/from16 v32, p29

    :goto_7
    const/high16 v6, 0x20000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_8

    const-string v6, ""

    move-object/from16 v33, v6

    goto :goto_8

    :cond_8
    move-object/from16 v33, p30

    :goto_8
    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v0, v6

    if-eqz v0, :cond_9

    const/16 v34, 0x0

    goto :goto_9

    :cond_9
    move/from16 v34, p31

    :goto_9
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_a

    const/16 v36, 0x0

    goto :goto_a

    :cond_a
    move/from16 v36, p33

    :goto_a
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_b

    const/16 v38, 0x0

    goto :goto_b

    :cond_b
    move/from16 v38, p35

    :goto_b
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_c

    const/16 v39, 0x0

    goto :goto_c

    :cond_c
    move/from16 v39, p36

    :goto_c
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_d

    const/16 v40, 0x0

    goto :goto_d

    :cond_d
    move/from16 v40, p37

    :goto_d
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_e

    const/16 v41, 0x0

    goto :goto_e

    :cond_e
    move/from16 v41, p38

    :goto_e
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_f

    const/16 v42, 0x0

    goto :goto_f

    :cond_f
    move/from16 v42, p39

    :goto_f
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_10

    const/16 v43, 0x0

    goto :goto_10

    :cond_10
    move/from16 v43, p40

    :goto_10
    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_11

    const/16 v44, 0x0

    goto :goto_11

    :cond_11
    move/from16 v44, p41

    :goto_11
    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_12

    const/16 v45, 0x0

    goto :goto_12

    :cond_12
    move/from16 v45, p42

    :goto_12
    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_13

    const/16 v46, 0x0

    goto :goto_13

    :cond_13
    move/from16 v46, p43

    :goto_13
    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_14

    const/16 v47, 0x0

    goto :goto_14

    :cond_14
    move/from16 v47, p44

    :goto_14
    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_15

    const/16 v48, 0x0

    goto :goto_15

    :cond_15
    move/from16 v48, p45

    :goto_15
    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_16

    const/16 v49, 0x0

    goto :goto_16

    :cond_16
    move/from16 v49, p46

    :goto_16
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_17

    const/16 v50, 0x0

    goto :goto_17

    :cond_17
    move/from16 v50, p47

    :goto_17
    const v0, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    const/16 v51, 0x0

    goto :goto_18

    :cond_18
    move/from16 v51, p48

    :goto_18
    const/high16 v0, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    const/16 v52, 0x0

    goto :goto_19

    :cond_19
    move/from16 v52, p49

    :goto_19
    const/high16 v0, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    const/16 v53, 0x0

    goto :goto_1a

    :cond_1a
    move/from16 v53, p50

    :goto_1a
    and-int v0, v1, v2

    if-eqz v0, :cond_1b

    const/16 v54, 0x0

    goto :goto_1b

    :cond_1b
    move/from16 v54, p51

    :goto_1b
    and-int v0, v1, v4

    if-eqz v0, :cond_1c

    const/16 v55, 0x0

    goto :goto_1c

    :cond_1c
    move/from16 v55, p52

    :goto_1c
    and-int v0, v1, v5

    if-eqz v0, :cond_1d

    const/16 v56, 0x0

    goto :goto_1d

    :cond_1d
    move/from16 v56, p53

    :goto_1d
    const/high16 v0, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e

    const/16 v57, 0x0

    goto :goto_1e

    :cond_1e
    move/from16 v57, p54

    :goto_1e
    const/high16 v0, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1f

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v58, v0

    goto :goto_1f

    :cond_1f
    move-object/from16 v58, p55

    :goto_1f
    const/high16 v0, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_20

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v59, v0

    goto :goto_20

    :cond_20
    move-object/from16 v59, p56

    :goto_20
    const/high16 v0, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    const/16 v60, 0x0

    goto :goto_21

    :cond_21
    move/from16 v60, p57

    :goto_21
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v13, p10

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v25, p22

    move-object/from16 v26, p23

    move-object/from16 v27, p24

    move-object/from16 v28, p25

    move-object/from16 v29, p26

    move-object/from16 v35, p32

    move/from16 v37, p34

    move-object/from16 v61, p58

    move-object/from16 v62, p59

    move-object/from16 v63, p60

    move-object/from16 v64, p61

    .line 65
    invoke-direct/range {v3 .. v64}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p62

    move/from16 v2, p63

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->sex:I

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->intro:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->nickname:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->city:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatartime:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->birthday:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->professional:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emotion:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->province:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->peerage_id:I

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatar:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->snap:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    move-object/from16 p13, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->follow_users:Ljava/util/List;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followers_cnt:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v17, v1, v16

    move-object/from16 p15, v15

    if-eqz v17, :cond_f

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followees_cnt:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v18, v1, v17

    move-object/from16 p16, v15

    if-eqz v18, :cond_10

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emceelevel:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v19, v1, v18

    move-object/from16 p17, v15

    if-eqz v19, :cond_11

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->familyLevel:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v20, v1, v19

    move-object/from16 p18, v15

    if-eqz v20, :cond_12

    iget v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->age:I

    goto :goto_12

    :cond_12
    move/from16 v15, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v21, v1, v20

    move/from16 p19, v15

    if-eqz v21, :cond_13

    iget v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->beanorignal:I

    goto :goto_13

    :cond_13
    move/from16 v15, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v22, v1, v21

    move/from16 p20, v15

    if-eqz v22, :cond_14

    iget v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->spendcoin:I

    goto :goto_14

    :cond_14
    move/from16 v15, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v23, v1, v22

    move/from16 p21, v15

    if-eqz v23, :cond_15

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->broadcasting:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v1, v23

    move-object/from16 p22, v15

    if-eqz v23, :cond_16

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->curroomnum:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v23, 0x800000

    and-int v23, v1, v23

    move-object/from16 p23, v15

    if-eqz v23, :cond_17

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_enabled:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v23, 0x1000000

    and-int v23, v1, v23

    move-object/from16 p24, v15

    if-eqz v23, :cond_18

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_status:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v23, 0x2000000

    and-int v23, v1, v23

    move-object/from16 p25, v15

    if-eqz v23, :cond_19

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approveid:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v23, 0x4000000

    and-int v23, v1, v23

    move-object/from16 p26, v15

    if-eqz v23, :cond_1a

    iget v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approvetype:I

    goto :goto_1a

    :cond_1a
    move/from16 v15, p27

    :goto_1a
    const/high16 v23, 0x8000000

    and-int v23, v1, v23

    move/from16 p27, v15

    if-eqz v23, :cond_1b

    iget v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_attention:I

    goto :goto_1b

    :cond_1b
    move/from16 v15, p28

    :goto_1b
    const/high16 v23, 0x10000000

    and-int v23, v1, v23

    move/from16 p28, v15

    if-eqz v23, :cond_1c

    iget v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isHit:I

    goto :goto_1c

    :cond_1c
    move/from16 v15, p29

    :goto_1c
    const/high16 v23, 0x20000000

    and-int v23, v1, v23

    move/from16 p29, v15

    if-eqz v23, :cond_1d

    iget-object v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->name_card:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, v1, v23

    move-object/from16 p30, v15

    if-eqz v23, :cond_1e

    iget v15, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->lob_no:I

    goto :goto_1e

    :cond_1e
    move/from16 v15, p31

    :goto_1e
    const/high16 v23, -0x80000000

    and-int v1, v1, v23

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->mysteryId:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    and-int/lit8 v23, v2, 0x1

    move-object/from16 p32, v1

    if-eqz v23, :cond_20

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isMystery:I

    goto :goto_20

    :cond_20
    move/from16 v1, p33

    :goto_20
    and-int/lit8 v23, v2, 0x2

    move/from16 p33, v1

    if-eqz v23, :cond_21

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest:Z

    goto :goto_21

    :cond_21
    move/from16 v1, p34

    :goto_21
    and-int/lit8 v23, v2, 0x4

    move/from16 p34, v1

    if-eqz v23, :cond_22

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isanchor:Z

    goto :goto_22

    :cond_22
    move/from16 v1, p35

    :goto_22
    and-int/lit8 v23, v2, 0x8

    move/from16 p35, v1

    if-eqz v23, :cond_23

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw:Z

    goto :goto_23

    :cond_23
    move/from16 v1, p36

    :goto_23
    and-int/lit8 v23, v2, 0x10

    move/from16 p36, v1

    if-eqz v23, :cond_24

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_lounge_vip:Z

    goto :goto_24

    :cond_24
    move/from16 v1, p37

    :goto_24
    and-int/lit8 v23, v2, 0x20

    move/from16 p37, v1

    if-eqz v23, :cond_25

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_subscribe_notify:I

    goto :goto_25

    :cond_25
    move/from16 v1, p38

    :goto_25
    and-int/lit8 v23, v2, 0x40

    move/from16 p38, v1

    if-eqz v23, :cond_26

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_single_conversation:I

    goto :goto_26

    :cond_26
    move/from16 v1, p39

    :goto_26
    move/from16 p39, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_group_conversation:I

    goto :goto_27

    :cond_27
    move/from16 v1, p40

    :goto_27
    move/from16 p40, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_im:I

    goto :goto_28

    :cond_28
    move/from16 v1, p41

    :goto_28
    move/from16 p41, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_anchor_rank:Z

    goto :goto_29

    :cond_29
    move/from16 v1, p42

    :goto_29
    move/from16 p42, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_family:Z

    goto :goto_2a

    :cond_2a
    move/from16 v1, p43

    :goto_2a
    move/from16 p43, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_deposit_chip:Z

    goto :goto_2b

    :cond_2b
    move/from16 v1, p44

    :goto_2b
    move/from16 p44, v1

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_withdraw_chip:Z

    goto :goto_2c

    :cond_2c
    move/from16 v1, p45

    :goto_2c
    move/from16 p45, v1

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_2d

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend:Z

    goto :goto_2d

    :cond_2d
    move/from16 v1, p46

    :goto_2d
    move/from16 p46, v1

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_2e

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend_withdraw:Z

    goto :goto_2e

    :cond_2e
    move/from16 v1, p47

    :goto_2e
    and-int v16, v2, v16

    move/from16 p47, v1

    if-eqz v16, :cond_2f

    iget-boolean v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_join_peerage:Z

    goto :goto_2f

    :cond_2f
    move/from16 v1, p48

    :goto_2f
    and-int v16, v2, v17

    move/from16 p48, v1

    if-eqz v16, :cond_30

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isAdmin:I

    goto :goto_30

    :cond_30
    move/from16 v1, p49

    :goto_30
    and-int v16, v2, v18

    move/from16 p49, v1

    if-eqz v16, :cond_31

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->interactionReady:I

    goto :goto_31

    :cond_31
    move/from16 v1, p50

    :goto_31
    and-int v16, v2, v19

    move/from16 p50, v1

    if-eqz v16, :cond_32

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showLevel:I

    goto :goto_32

    :cond_32
    move/from16 v1, p51

    :goto_32
    and-int v16, v2, v20

    move/from16 p51, v1

    if-eqz v16, :cond_33

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showFamilyLevel:I

    goto :goto_33

    :cond_33
    move/from16 v1, p52

    :goto_33
    and-int v16, v2, v21

    move/from16 p52, v1

    if-eqz v16, :cond_34

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showPeerage:I

    goto :goto_34

    :cond_34
    move/from16 v1, p53

    :goto_34
    and-int v16, v2, v22

    move/from16 p53, v1

    if-eqz v16, :cond_35

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showJapanese:I

    goto :goto_35

    :cond_35
    move/from16 v1, p54

    :goto_35
    const/high16 v16, 0x400000

    and-int v16, v2, v16

    move/from16 p54, v1

    if-eqz v16, :cond_36

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationEnable:Ljava/lang/Integer;

    goto :goto_36

    :cond_36
    move-object/from16 v1, p55

    :goto_36
    const/high16 v16, 0x800000

    and-int v16, v2, v16

    move-object/from16 p55, v1

    if-eqz v16, :cond_37

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationType:Ljava/lang/Integer;

    goto :goto_37

    :cond_37
    move-object/from16 v1, p56

    :goto_37
    const/high16 v16, 0x1000000

    and-int v16, v2, v16

    move-object/from16 p56, v1

    if-eqz v16, :cond_38

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeSubtitlesOn:I

    goto :goto_38

    :cond_38
    move/from16 v1, p57

    :goto_38
    const/high16 v16, 0x2000000

    and-int v16, v2, v16

    move/from16 p57, v1

    if-eqz v16, :cond_39

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->menus:Ljava/util/List;

    goto :goto_39

    :cond_39
    move-object/from16 v1, p58

    :goto_39
    const/high16 v16, 0x4000000

    and-int v16, v2, v16

    move-object/from16 p58, v1

    if-eqz v16, :cond_3a

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->username:Ljava/lang/String;

    goto :goto_3a

    :cond_3a
    move-object/from16 v1, p59

    :goto_3a
    const/high16 v16, 0x8000000

    and-int v16, v2, v16

    move-object/from16 p59, v1

    if-eqz v16, :cond_3b

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw_promotion:Ljava/lang/String;

    goto :goto_3b

    :cond_3b
    move-object/from16 v1, p60

    :goto_3b
    const/high16 v16, 0x10000000

    and-int v2, v2, v16

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->settings:Ljava/util/List;

    goto :goto_3c

    :cond_3c
    move-object/from16 v2, p61

    :goto_3c
    move-object/from16 p1, v3

    move/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move/from16 p11, v13

    move-object/from16 p12, v14

    move/from16 p31, v15

    move-object/from16 p60, v1

    move-object/from16 p61, v2

    invoke-virtual/range {p0 .. p61}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->province:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->peerage_id:I

    return v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->snap:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->follow_users:Ljava/util/List;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followers_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followees_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emceelevel:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->familyLevel:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->age:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->sex:I

    return v0
.end method

.method public final component20()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->beanorignal:I

    return v0
.end method

.method public final component21()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->spendcoin:I

    return v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->broadcasting:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->curroomnum:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_enabled:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_status:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approveid:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approvetype:I

    return v0
.end method

.method public final component28()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_attention:I

    return v0
.end method

.method public final component29()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isHit:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->name_card:Ljava/lang/String;

    return-object v0
.end method

.method public final component31()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->lob_no:I

    return v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->mysteryId:Ljava/lang/String;

    return-object v0
.end method

.method public final component33()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isMystery:I

    return v0
.end method

.method public final component34()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest:Z

    return v0
.end method

.method public final component35()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isanchor:Z

    return v0
.end method

.method public final component36()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw:Z

    return v0
.end method

.method public final component37()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_lounge_vip:Z

    return v0
.end method

.method public final component38()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_subscribe_notify:I

    return v0
.end method

.method public final component39()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_single_conversation:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final component40()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_group_conversation:I

    return v0
.end method

.method public final component41()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_im:I

    return v0
.end method

.method public final component42()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_anchor_rank:Z

    return v0
.end method

.method public final component43()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_family:Z

    return v0
.end method

.method public final component44()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_deposit_chip:Z

    return v0
.end method

.method public final component45()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_withdraw_chip:Z

    return v0
.end method

.method public final component46()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend:Z

    return v0
.end method

.method public final component47()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend_withdraw:Z

    return v0
.end method

.method public final component48()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_join_peerage:Z

    return v0
.end method

.method public final component49()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isAdmin:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final component50()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->interactionReady:I

    return v0
.end method

.method public final component51()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showLevel:I

    return v0
.end method

.method public final component52()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showFamilyLevel:I

    return v0
.end method

.method public final component53()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showPeerage:I

    return v0
.end method

.method public final component54()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showJapanese:I

    return v0
.end method

.method public final component55()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationEnable:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component56()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component57()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeSubtitlesOn:I

    return v0
.end method

.method public final component58()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->menus:Ljava/util/List;

    return-object v0
.end method

.method public final component59()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatartime:Ljava/lang/String;

    return-object v0
.end method

.method public final component60()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw_promotion:Ljava/lang/String;

    return-object v0
.end method

.method public final component61()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->settings:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->professional:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emotion:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
    .locals 64
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p14    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p55    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p56    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p58    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p59    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p60    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p61    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IZZZZIIIIZZZZZZZIIIIII",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move-object/from16 v30, p30

    move/from16 v31, p31

    move-object/from16 v32, p32

    move/from16 v33, p33

    move/from16 v34, p34

    move/from16 v35, p35

    move/from16 v36, p36

    move/from16 v37, p37

    move/from16 v38, p38

    move/from16 v39, p39

    move/from16 v40, p40

    move/from16 v41, p41

    move/from16 v42, p42

    move/from16 v43, p43

    move/from16 v44, p44

    move/from16 v45, p45

    move/from16 v46, p46

    move/from16 v47, p47

    move/from16 v48, p48

    move/from16 v49, p49

    move/from16 v50, p50

    move/from16 v51, p51

    move/from16 v52, p52

    move/from16 v53, p53

    move/from16 v54, p54

    move-object/from16 v55, p55

    move-object/from16 v56, p56

    move/from16 v57, p57

    move-object/from16 v58, p58

    move-object/from16 v59, p59

    move-object/from16 v60, p60

    move-object/from16 v61, p61

    const-string v0, "id"

    move-object/from16 v62, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intro"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nickname"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatartime"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "birthday"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "professional"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emotion"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "province"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snap"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "follow_users"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followers_cnt"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followees_cnt"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emceelevel"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "familyLevel"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcasting"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "curroomnum"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toy_enabled"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toy_status"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "approveid"

    move-object/from16 v1, p26

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name_card"

    move-object/from16 v1, p30

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mysteryId"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menus"

    move-object/from16 v1, p58

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    move-object/from16 v1, p59

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iswithdraw_promotion"

    move-object/from16 v1, p60

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v1, p61

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v63, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-object/from16 v0, v63

    move-object/from16 v1, v62

    invoke-direct/range {v0 .. v61}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v63
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->sex:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->sex:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->intro:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->intro:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->nickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->nickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->city:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->city:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatartime:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatartime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->birthday:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->birthday:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->professional:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->professional:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emotion:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emotion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->province:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->province:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->peerage_id:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->peerage_id:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->snap:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->snap:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->follow_users:Ljava/util/List;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->follow_users:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followers_cnt:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followers_cnt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followees_cnt:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followees_cnt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emceelevel:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emceelevel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->familyLevel:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->familyLevel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->age:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->age:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->beanorignal:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->beanorignal:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->spendcoin:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->spendcoin:I

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->broadcasting:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->broadcasting:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->curroomnum:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->curroomnum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_enabled:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_enabled:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_status:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approveid:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approveid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approvetype:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approvetype:I

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_attention:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_attention:I

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isHit:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isHit:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->name_card:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->name_card:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->lob_no:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->lob_no:I

    if-eq v1, v3, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->mysteryId:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->mysteryId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isMystery:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isMystery:I

    if-eq v1, v3, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest:Z

    if-eq v1, v3, :cond_23

    return v2

    :cond_23
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isanchor:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isanchor:Z

    if-eq v1, v3, :cond_24

    return v2

    :cond_24
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_lounge_vip:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_lounge_vip:Z

    if-eq v1, v3, :cond_26

    return v2

    :cond_26
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_subscribe_notify:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_subscribe_notify:I

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_single_conversation:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_single_conversation:I

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_group_conversation:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_group_conversation:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_im:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_im:I

    if-eq v1, v3, :cond_2a

    return v2

    :cond_2a
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_anchor_rank:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_anchor_rank:Z

    if-eq v1, v3, :cond_2b

    return v2

    :cond_2b
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_family:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_family:Z

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_deposit_chip:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_deposit_chip:Z

    if-eq v1, v3, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_withdraw_chip:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_withdraw_chip:Z

    if-eq v1, v3, :cond_2e

    return v2

    :cond_2e
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend:Z

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend_withdraw:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend_withdraw:Z

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_join_peerage:Z

    iget-boolean v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_join_peerage:Z

    if-eq v1, v3, :cond_31

    return v2

    :cond_31
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isAdmin:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isAdmin:I

    if-eq v1, v3, :cond_32

    return v2

    :cond_32
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->interactionReady:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->interactionReady:I

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showLevel:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showLevel:I

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showFamilyLevel:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showFamilyLevel:I

    if-eq v1, v3, :cond_35

    return v2

    :cond_35
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showPeerage:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showPeerage:I

    if-eq v1, v3, :cond_36

    return v2

    :cond_36
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showJapanese:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showJapanese:I

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationEnable:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationEnable:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeSubtitlesOn:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeSubtitlesOn:I

    if-eq v1, v3, :cond_3a

    return v2

    :cond_3a
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->menus:Ljava/util/List;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->menus:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->username:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->username:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v2

    :cond_3c
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw_promotion:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw_promotion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    :cond_3d
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->settings:Ljava/util/List;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->settings:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    return v2

    :cond_3e
    return v0
.end method

.method public final getAge()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->age:I

    return v0
.end method

.method public final getApproveid()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approveid:Ljava/lang/String;

    return-object v0
.end method

.method public final getApprovetype()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approvetype:I

    return v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatartime()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatartime:Ljava/lang/String;

    return-object v0
.end method

.method public final getBeanorignal()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->beanorignal:I

    return v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public final getBroadcasting()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->broadcasting:Ljava/lang/String;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurroomnum()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->curroomnum:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmceelevel()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emceelevel:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmotion()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emotion:Ljava/lang/String;

    return-object v0
.end method

.method public final getFamilyLevel()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->familyLevel:Ljava/lang/String;

    return-object v0
.end method

.method public final getFollow_users()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->follow_users:Ljava/util/List;

    return-object v0
.end method

.method public final getFollowees_cnt()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followees_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public final getFollowers_cnt()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followers_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInteractionReady()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->interactionReady:I

    return v0
.end method

.method public final getIntro()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsanchor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isanchor:Z

    return v0
.end method

.method public final getIswithdraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw:Z

    return v0
.end method

.method public final getIswithdraw_promotion()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw_promotion:Ljava/lang/String;

    return-object v0
.end method

.method public final getLob_no()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->lob_no:I

    return v0
.end method

.method public final getMenus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->menus:Ljava/util/List;

    return-object v0
.end method

.method public final getMysteryId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->mysteryId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName_card()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->name_card:Ljava/lang/String;

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getPeerage_id()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->peerage_id:I

    return v0
.end method

.method public final getProfessional()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->professional:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvince()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->province:Ljava/lang/String;

    return-object v0
.end method

.method public final getRealtimeSubtitlesOn()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeSubtitlesOn:I

    return v0
.end method

.method public final getRealtimeTranslationEnable()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationEnable:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRealtimeTranslationType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->settings:Ljava/util/List;

    return-object v0
.end method

.method public final getSex()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->sex:I

    return v0
.end method

.method public final getShowFamilyLevel()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showFamilyLevel:I

    return v0
.end method

.method public final getShowJapanese()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showJapanese:I

    return v0
.end method

.method public final getShowLevel()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showLevel:I

    return v0
.end method

.method public final getShowPeerage()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showPeerage:I

    return v0
.end method

.method public final getSnap()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->snap:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpendcoin()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->spendcoin:I

    return v0
.end method

.method public final getToy_enabled()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_enabled:Ljava/lang/String;

    return-object v0
.end method

.method public final getToy_status()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_status:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->sex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->intro:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->city:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatartime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->birthday:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->professional:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emotion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->province:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->peerage_id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->snap:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->follow_users:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followers_cnt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followees_cnt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emceelevel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->familyLevel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->age:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->beanorignal:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->spendcoin:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->broadcasting:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->curroomnum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_enabled:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approveid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approvetype:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_attention:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isHit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->name_card:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->lob_no:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->mysteryId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isMystery:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isanchor:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_lounge_vip:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_subscribe_notify:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_single_conversation:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_group_conversation:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_im:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_anchor_rank:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_family:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_deposit_chip:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_withdraw_chip:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend_withdraw:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_join_peerage:Z

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isAdmin:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->interactionReady:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showLevel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showFamilyLevel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showPeerage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showJapanese:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationEnable:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationType:Ljava/lang/Integer;

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeSubtitlesOn:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->menus:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw_promotion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->settings:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAdmin()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isAdmin:I

    return v0
.end method

.method public final isGuest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest:Z

    return v0
.end method

.method public final isHit()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isHit:I

    return v0
.end method

.method public final isMystery()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isMystery:I

    return v0
.end method

.method public final is_anchor_rank()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_anchor_rank:Z

    return v0
.end method

.method public final is_attention()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_attention:I

    return v0
.end method

.method public final is_deposit_chip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_deposit_chip:Z

    return v0
.end method

.method public final is_family()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_family:Z

    return v0
.end method

.method public final is_group_conversation()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_group_conversation:I

    return v0
.end method

.method public final is_im()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_im:I

    return v0
.end method

.method public final is_join_peerage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_join_peerage:Z

    return v0
.end method

.method public final is_legend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend:Z

    return v0
.end method

.method public final is_legend_withdraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend_withdraw:Z

    return v0
.end method

.method public final is_lounge_vip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_lounge_vip:Z

    return v0
.end method

.method public final is_single_conversation()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_single_conversation:I

    return v0
.end method

.method public final is_subscribe_notify()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_subscribe_notify:I

    return v0
.end method

.method public final is_withdraw_chip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_withdraw_chip:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserBean(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->sex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->intro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatartime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatartime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", birthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", professional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->professional:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emotion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", peerage_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->peerage_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->snap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", follow_users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->follow_users:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", followers_cnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followers_cnt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", followees_cnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->followees_cnt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emceelevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->emceelevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", familyLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->familyLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", beanorignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->beanorignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spendcoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->spendcoin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", broadcasting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->broadcasting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", curroomnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->curroomnum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toy_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_enabled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toy_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->toy_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", approveid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approveid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", approvetype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->approvetype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_attention="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_attention:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isHit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name_card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->name_card:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lob_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->lob_no:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mysteryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->mysteryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isMystery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isMystery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isGuest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isanchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isanchor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iswithdraw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_lounge_vip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_lounge_vip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_subscribe_notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_subscribe_notify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_single_conversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_single_conversation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_group_conversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_group_conversation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_im="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_im:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is_anchor_rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_anchor_rank:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_family="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_family:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_deposit_chip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_deposit_chip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_withdraw_chip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_withdraw_chip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_legend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_legend_withdraw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_legend_withdraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_join_peerage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->is_join_peerage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isAdmin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interactionReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->interactionReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showFamilyLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showFamilyLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showPeerage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showPeerage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showJapanese="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->showJapanese:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", realtimeTranslationEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationEnable:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", realtimeTranslationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeTranslationType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", realtimeSubtitlesOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->realtimeSubtitlesOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", menus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->menus:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iswithdraw_promotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->iswithdraw_promotion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->settings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
