.class public final Ldagger/hilt/android/migration/d;
.super Ljava/lang/Object;
.source "OptionalInjectCheck.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lq6/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lk6/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\'%s\' is not an optionally injected android entry point. Check that you have annotated the class with both @AndroidEntryPoint and @OptionalInject."

    .line 4
    invoke-static {v0, v2, v1}, Lq6/f;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    check-cast p0, Lk6/b;

    invoke-interface {p0}, Lk6/b;->a()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/app/Service;)Z
    .locals 0
    .param p0    # Landroid/app/Service;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    invoke-static {p0}, Ldagger/hilt/android/migration/d;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/BroadcastReceiver;)Z
    .locals 0
    .param p0    # Landroid/content/BroadcastReceiver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "broadcastReceiver"
        }
    .end annotation

    invoke-static {p0}, Ldagger/hilt/android/migration/d;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {p0}, Ldagger/hilt/android/migration/d;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroidx/activity/ComponentActivity;)Z
    .locals 0
    .param p0    # Landroidx/activity/ComponentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-static {p0}, Ldagger/hilt/android/migration/d;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static f(Landroidx/fragment/app/Fragment;)Z
    .locals 0
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    invoke-static {p0}, Ldagger/hilt/android/migration/d;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
