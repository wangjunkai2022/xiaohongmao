.class public Lcom/tangxiaolv/telegramgallery/e;
.super Ljava/lang/Object;
.source "Gallery.java"


# static fields
.field public static volatile a:Landroid/app/Application;

.field public static volatile b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/e;->b:Landroid/os/Handler;

    :cond_0
    return-void
.end method
