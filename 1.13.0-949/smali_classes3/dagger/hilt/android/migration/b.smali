.class public final Ldagger/hilt/android/migration/b;
.super Ljava/lang/Object;
.source "CustomInjection.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 4
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lq6/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lk6/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\'%s\' is not a custom inject application. Check that you have annotated the application with both @HiltAndroidApp and @CustomInject."

    .line 4
    invoke-static {v0, v2, v1}, Lq6/f;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    check-cast p0, Lk6/a;

    invoke-interface {p0}, Lk6/a;->a()V

    return-void
.end method
