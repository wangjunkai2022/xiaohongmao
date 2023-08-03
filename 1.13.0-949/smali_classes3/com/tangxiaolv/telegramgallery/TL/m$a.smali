.class Lcom/tangxiaolv/telegramgallery/TL/m$a;
.super Ljava/lang/ThreadLocal;
.source "TLObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/tangxiaolv/telegramgallery/TL/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/tangxiaolv/telegramgallery/TL/j;
    .locals 2

    new-instance v0, Lcom/tangxiaolv/telegramgallery/TL/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/j;-><init>(Z)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/TL/m$a;->a()Lcom/tangxiaolv/telegramgallery/TL/j;

    move-result-object v0

    return-object v0
.end method
