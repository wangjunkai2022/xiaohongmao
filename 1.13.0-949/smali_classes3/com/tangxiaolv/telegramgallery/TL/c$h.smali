.class public Lcom/tangxiaolv/telegramgallery/TL/c$h;
.super Lcom/tangxiaolv/telegramgallery/TL/c$g;
.source "DocumentAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static o:I = -0x66b3677e


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/c$g;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->k(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->f:Ljava/lang/String;

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 1

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/c$h;->o:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->x(Ljava/lang/String;)V

    return-void
.end method
