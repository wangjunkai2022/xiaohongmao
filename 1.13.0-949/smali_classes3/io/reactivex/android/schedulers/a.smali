.class public final Lio/reactivex/android/schedulers/a;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/android/schedulers/a$b;
    }
.end annotation


# static fields
.field private static final a:Lio/reactivex/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/android/schedulers/a$a;

    invoke-direct {v0}, Lio/reactivex/android/schedulers/a$a;-><init>()V

    invoke-static {v0}, Lio/reactivex/android/plugins/a;->f(Ljava/util/concurrent/Callable;)Lio/reactivex/h0;

    move-result-object v0

    sput-object v0, Lio/reactivex/android/schedulers/a;->a:Lio/reactivex/h0;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/os/Looper;)Lio/reactivex/h0;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/reactivex/android/schedulers/a;->b(Landroid/os/Looper;Z)Lio/reactivex/h0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/os/Looper;Z)Lio/reactivex/h0;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "looper == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p1, :cond_0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/android/schedulers/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p1}, Lio/reactivex/android/schedulers/b;-><init>(Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public static c()Lio/reactivex/h0;
    .locals 1

    sget-object v0, Lio/reactivex/android/schedulers/a;->a:Lio/reactivex/h0;

    invoke-static {v0}, Lio/reactivex/android/plugins/a;->g(Lio/reactivex/h0;)Lio/reactivex/h0;

    move-result-object v0

    return-object v0
.end method
