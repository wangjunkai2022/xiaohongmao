.class Lcom/tangxiaolv/telegramgallery/Utils/d$b;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/d;->H(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Boolean;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/concurrent/Semaphore;

.field final synthetic d:Lcom/tangxiaolv/telegramgallery/Utils/d;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/d;[Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$b;->d:Lcom/tangxiaolv/telegramgallery/Utils/d;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$b;->a:[Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$b;->c:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$b;->a:[Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$b;->d:Lcom/tangxiaolv/telegramgallery/Utils/d;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->a(Lcom/tangxiaolv/telegramgallery/Utils/d;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/d$b;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
