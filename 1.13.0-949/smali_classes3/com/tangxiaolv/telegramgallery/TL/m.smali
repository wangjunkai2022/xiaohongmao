.class public Lcom/tangxiaolv/telegramgallery/TL/m;
.super Ljava/lang/Object;
.source "TLObject.java"


# static fields
.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/tangxiaolv/telegramgallery/TL/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/m$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/TL/m$a;-><init>()V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/TL/m;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/TL/m;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/m;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 2

    .line 1
    sget-object v0, Lcom/tangxiaolv/telegramgallery/TL/m;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/TL/j;

    .line 2
    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/TL/j;->I()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/TL/a;

    invoke-virtual {p0, v0}, Lcom/tangxiaolv/telegramgallery/TL/m;->e(Lcom/tangxiaolv/telegramgallery/TL/a;)V

    .line 4
    invoke-virtual {v1}, Lcom/tangxiaolv/telegramgallery/TL/j;->b()I

    move-result v0

    return v0
.end method

.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 0

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 0

    return-void
.end method
