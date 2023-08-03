.class final Lcom/qennnsad/aknkaksd/f$c;
.super Lcom/qennnsad/aknkaksd/d$a;
.source "DaggerBeautyLiveApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/f$c$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/qennnsad/aknkaksd/f$k;

.field private final c:Lcom/qennnsad/aknkaksd/f$e;

.field private final d:Lcom/qennnsad/aknkaksd/f$c;

.field private e:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityParam"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/d$a;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/qennnsad/aknkaksd/f$c;->d:Lcom/qennnsad/aknkaksd/f$c;

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    .line 5
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/f$c;->c:Lcom/qennnsad/aknkaksd/f$e;

    .line 6
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/f$c;->a:Landroid/app/Activity;

    .line 7
    invoke-direct {p0, p3}, Lcom/qennnsad/aknkaksd/f$c;->t(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Landroid/app/Activity;Lcom/qennnsad/aknkaksd/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/f$c;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Landroid/app/Activity;)V

    return-void
.end method

.method private A(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;)Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/d;->c(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;Lg5/a;)V

    return-object p1
.end method

.method static synthetic r(Lcom/qennnsad/aknkaksd/f$c;)Lu7/c;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/f$c;->e:Lu7/c;

    return-object p0
.end method

.method static synthetic s(Lcom/qennnsad/aknkaksd/f$c;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/f$c;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private t(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activityParam"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/qennnsad/aknkaksd/f$c$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$c;->c:Lcom/qennnsad/aknkaksd/f$e;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$c;->d:Lcom/qennnsad/aknkaksd/f$c;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/f$c$a;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;I)V

    invoke-static {p1}, Ldagger/internal/v;->a(Lu7/c;)Lu7/c;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$c;->e:Lu7/c;

    .line 2
    new-instance p1, Lcom/qennnsad/aknkaksd/f$c$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$c;->c:Lcom/qennnsad/aknkaksd/f$e;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$c;->d:Lcom/qennnsad/aknkaksd/f$c;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/f$c$a;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;I)V

    invoke-static {p1}, Ldagger/internal/g;->b(Lu7/c;)Lu7/c;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/f$c;->f:Lu7/c;

    return-void
.end method

.method private u(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->y(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/e;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;Lcom/qennnsad/aknkaksd/data/websocket/j;)V

    return-object p1
.end method

.method private v(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->f:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/c;->e(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/l;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/c;->c(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;Lg5/a;)V

    return-object p1
.end method

.method private w(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->z(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/e0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/e0;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->A(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;)V

    return-object p1
.end method

.method private x(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->u(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->z(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/e0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/e0;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->A(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;)V

    return-object p1
.end method

.method private y(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;)Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/g;->c(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;Lg5/a;)V

    return-object p1
.end method

.method private z(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->f(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->c(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->s(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/t0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->e(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lcom/qennnsad/aknkaksd/util/t0;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/f$k;->x(Lcom/qennnsad/aknkaksd/f$k;)Lu7/c;

    move-result-object v0

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/m1;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->f(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lcom/qennnsad/aknkaksd/util/m1;)V

    return-object p1
.end method


# virtual methods
.method public a()Ldagger/hilt/android/internal/lifecycle/a$d;
    .locals 5

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/f$c;->c()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/f$n;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$c;->c:Lcom/qennnsad/aknkaksd/f$e;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/f$n;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$a;)V

    invoke-static {v0, v1}, Ldagger/hilt/android/internal/lifecycle/b;->c(Ljava/util/Set;Lh6/f;)Ldagger/hilt/android/internal/lifecycle/a$d;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$c;->y(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;)Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;

    return-void
.end method

.method public c()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/s;->c()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1d

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/g;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/l;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/e;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/index/r;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/auth/login/t;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/rank/g;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/main/x;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/main/mall/k;->c()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/a0;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/s;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/e;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/s1;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/rank/container/h;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/i;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/rank/k;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xe

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/auth/findpass/m;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xf

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/i;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/m;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x11

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/n;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x12

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/e0;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x13

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/common/p;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x14

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/s;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x15

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/s;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x16

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/splash/p;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x17

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/l;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x18

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/j;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x19

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/p;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vegan/e;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1b

    aput-object v7, v6, v8

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/vip/e;->c()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1c

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$c;->v(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatDetailsActivity;

    return-void
.end method

.method public e(Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public f()Lh6/e;
    .locals 5

    new-instance v0, Lcom/qennnsad/aknkaksd/f$l;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$c;->c:Lcom/qennnsad/aknkaksd/f$e;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$c;->d:Lcom/qennnsad/aknkaksd/f$c;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/f$l;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method

.method public g(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$c;->u(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/AdminListActivity;

    return-void
.end method

.method public h(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$c;->A(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;)Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;

    return-void
.end method

.method public i(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$c;->w(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PkRightPlayerActivity;

    return-void
.end method

.method public j(Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public k(Lcom/qennnsad/aknkaksd/presentation/module/auth/AuthActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public l(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/settings/DataUsageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public m(Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public n(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$c;->x(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    return-void
.end method

.method public o(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/f$c;->z(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    return-void
.end method

.method public p()Lh6/f;
    .locals 4

    new-instance v0, Lcom/qennnsad/aknkaksd/f$n;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$c;->c:Lcom/qennnsad/aknkaksd/f$e;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/f$n;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method

.method public q()Lh6/c;
    .locals 5

    new-instance v0, Lcom/qennnsad/aknkaksd/f$g;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/f$c;->b:Lcom/qennnsad/aknkaksd/f$k;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/f$c;->c:Lcom/qennnsad/aknkaksd/f$e;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/f$c;->d:Lcom/qennnsad/aknkaksd/f$c;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/f$g;-><init>(Lcom/qennnsad/aknkaksd/f$k;Lcom/qennnsad/aknkaksd/f$e;Lcom/qennnsad/aknkaksd/f$c;Lcom/qennnsad/aknkaksd/f$a;)V

    return-object v0
.end method
