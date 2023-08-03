.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/j;
.source "RoomManageDialog.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoomManageDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomManageDialog.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n254#2,2:210\n254#2,2:212\n254#2,2:214\n254#2,2:216\n254#2,2:218\n1549#3:220\n1620#3,3:221\n*S KotlinDebug\n*F\n+ 1 RoomManageDialog.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog\n*L\n140#1:210,2\n143#1:212,2\n149#1:214,2\n150#1:216,2\n152#1:218,2\n157#1:220\n157#1:221,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001`B;\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010!\u001a\u00020\u001c\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00050&\u00a2\u0006\u0004\u0008^\u0010_J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0018\u0010\u0017\u001a\u00020\u00052\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014H\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001eR\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R \u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00050&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00107\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00086\u00104R\u0016\u00109\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00088\u00104R\u0016\u0010;\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008:\u00104R\u0016\u0010=\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008<\u00104R\u0016\u0010?\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008>\u00104R\u0016\u0010A\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008@\u00104R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u001e\u0010H\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001b\u0010N\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR\u001b\u0010R\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008O\u0010K\u001a\u0004\u0008P\u0010QR\u0014\u0010T\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008S\u0010$R\u0016\u0010V\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010$R\"\u0010X\u001a\u00020W8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008X\u0010Y\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]\u00a8\u0006a"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;",
        "Landroid/view/View;",
        "view",
        "",
        "k0",
        "n0",
        "p0",
        "Landroid/content/Context;",
        "b",
        "",
        "getTheme",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreateView",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;",
        "list",
        "S",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "f",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "selectedUser",
        "",
        "g",
        "Ljava/lang/String;",
        "roomAnchorId",
        "h",
        "roomId",
        "",
        "i",
        "Z",
        "isPkOpponentClicked",
        "Lkotlin/Function1;",
        "j",
        "Lkotlin/jvm/functions/Function1;",
        "wsActionCallback",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "l",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "j0",
        "()Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "o0",
        "(Lcom/qennnsad/aknkaksd/data/websocket/j;)V",
        "wsObjectPool",
        "Landroid/widget/Button;",
        "m",
        "Landroid/widget/Button;",
        "btnAddManager",
        "n",
        "btnMuteUser",
        "o",
        "btnKickUser",
        "p",
        "btnManagerList",
        "q",
        "btnWarnUser",
        "r",
        "btnReportUser",
        "s",
        "btnCancel",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;",
        "t",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;",
        "presenter",
        "u",
        "Ljava/util/List;",
        "adminList",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;",
        "v",
        "Lkotlin/Lazy;",
        "i0",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;",
        "myAdminRole",
        "w",
        "l0",
        "()Z",
        "isMyRoom",
        "x",
        "isAnchorSelected",
        "y",
        "isSelectedUserAdmin",
        "Lg5/a;",
        "localDataManager",
        "Lg5/a;",
        "h0",
        "()Lg5/a;",
        "m0",
        "(Lg5/a;)V",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V",
        "AdminRole",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final f:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Z

.field private final j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public k:Lg5/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field public l:Lcom/qennnsad/aknkaksd/data/websocket/j;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final v:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final w:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectedUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roomAnchorId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roomId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wsActionCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/j;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->f:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->g:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->h:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->i:Z

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->j:Lkotlin/jvm/functions/Function1;

    .line 7
    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$i;

    invoke-direct {p3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$i;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->v:Lkotlin/Lazy;

    .line 8
    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$h;

    invoke-direct {p3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$h;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->w:Lkotlin/Lazy;

    .line 9
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->x:Z

    return-void
.end method

.method public static synthetic Y(Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->q0(Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic Z(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->u:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic a0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->t:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;

    return-object p0
.end method

.method public static final synthetic b0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->f:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    return-object p0
.end method

.method public static final synthetic e0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->j:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic f0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->y:Z

    return p0
.end method

.method public static final synthetic g0(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->p0()V

    return-void
.end method

.method private final i0()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->v:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    return-object v0
.end method

.method private final k0(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f0a0123

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.btn_add_manager)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->m:Landroid/widget/Button;

    const v0, 0x7f0a013f

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.btn_manager_list)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->p:Landroid/widget/Button;

    const v0, 0x7f0a0140

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.btn_mute_user)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->n:Landroid/widget/Button;

    const v0, 0x7f0a013b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.btn_kick_user)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->o:Landroid/widget/Button;

    const v0, 0x7f0a014b

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.btn_warn_user)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->q:Landroid/widget/Button;

    const v0, 0x7f0a0146

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.btn_report_user)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->r:Landroid/widget/Button;

    const v0, 0x7f0a0127

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.btn_cancel)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->s:Landroid/widget/Button;

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->m:Landroid/widget/Button;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "btnAddManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$a;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->p:Landroid/widget/Button;

    if-nez p1, :cond_1

    const-string p1, "btnManagerList"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$b;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->n:Landroid/widget/Button;

    if-nez p1, :cond_2

    const-string p1, "btnMuteUser"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_2

    :cond_2
    move-object v1, p1

    :goto_2
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$c;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->o:Landroid/widget/Button;

    if-nez p1, :cond_3

    const-string p1, "btnKickUser"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_3

    :cond_3
    move-object v1, p1

    :goto_3
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$d;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->q:Landroid/widget/Button;

    if-nez p1, :cond_4

    const-string p1, "btnWarnUser"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_4

    :cond_4
    move-object v1, p1

    :goto_4
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$e;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->s:Landroid/widget/Button;

    if-nez p1, :cond_5

    const-string p1, "btnCancel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_5

    :cond_5
    move-object v1, p1

    :goto_5
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$f;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->r:Landroid/widget/Button;

    if-nez p1, :cond_6

    const-string p1, "btnReportUser"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_6

    :cond_6
    move-object v1, p1

    :goto_6
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$g;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 15
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->n0()V

    return-void
.end method

.method private final l0()Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->w:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final n0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->m:Landroid/widget/Button;

    const-string v1, "btnAddManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->l0()Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->y:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->m:Landroid/widget/Button;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    const v1, 0x7f13038a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->p:Landroid/widget/Button;

    if-nez v0, :cond_4

    const-string v0, "btnManagerList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->l0()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/16 v1, 0x8

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->l0()Z

    move-result v0

    if-nez v0, :cond_7

    .line 7
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->i0()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    move-result-object v0

    sget-object v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;->ROOM_ADMIN:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    if-ne v0, v3, :cond_6

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->y:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->x:Z

    if-eqz v0, :cond_7

    .line 8
    :cond_6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->i0()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    move-result-object v0

    sget-object v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;->SUPER_ADMIN:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->x:Z

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 9
    :goto_2
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->n:Landroid/widget/Button;

    if-nez v3, :cond_9

    const-string v3, "btnMuteUser"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    if-eqz v0, :cond_a

    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    const/16 v6, 0x8

    .line 10
    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->o:Landroid/widget/Button;

    if-nez v3, :cond_b

    const-string v3, "btnKickUser"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_b
    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_4

    :cond_c
    const/16 v0, 0x8

    .line 12
    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->q:Landroid/widget/Button;

    if-nez v0, :cond_d

    const-string v0, "btnWarnUser"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move-object v2, v0

    :goto_5
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->x:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->i0()Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    move-result-object v0

    sget-object v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;->SUPER_ADMIN:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$AdminRole;

    if-ne v0, v3, :cond_e

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_f

    const/4 v4, 0x0

    .line 14
    :cond_f
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final p0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f14028d

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0064

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/k;

    invoke-direct {v1, v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/k;-><init>(Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final q0(Landroid/app/Dialog;Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;Landroid/content/DialogInterface;)V
    .locals 8

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f0a0207

    .line 1
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const v0, 0x7f0a0208

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0a020a

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    .line 4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;

    invoke-direct {v5, p2, v0, p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$l;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;Landroid/app/Dialog;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    new-instance p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$j;

    invoke-direct {p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$j;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p1, 0x7f0a0206

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string p1, "findViewById<TextView>(R.id.dialog_warn_cancel)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$k;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog$k;-><init>(Landroid/app/Dialog;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public S(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->u:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;

    .line 5
    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->f:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->y:Z

    .line 6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->n0()V

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext().applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    const v0, 0x7f140100

    return v0
.end method

.method public final h0()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->k:Lg5/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "localDataManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j0()Lcom/qennnsad/aknkaksd/data/websocket/j;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->l:Lcom/qennnsad/aknkaksd/data/websocket/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "wsObjectPool"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m0(Lg5/a;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->k:Lg5/a;

    return-void
.end method

.method public final o0(Lcom/qennnsad/aknkaksd/data/websocket/j;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/websocket/j;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->l:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0062

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0x50

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/Window;->setGravity(I)V

    const/4 p3, 0x2

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/Window;->addFlags(I)V

    const p3, 0x3f19999a    # 0.6f

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/Window;->setDimAmount(F)V

    .line 6
    :cond_0
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->t:Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;

    .line 7
    iget-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;->d(Ljava/lang/String;)V

    const-string p2, "this"

    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/RoomManageDialog;->k0(Landroid/view/View;)V

    return-object p1
.end method
