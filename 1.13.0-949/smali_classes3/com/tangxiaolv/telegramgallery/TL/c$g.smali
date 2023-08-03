.class public Lcom/tangxiaolv/telegramgallery/TL/c$g;
.super Lcom/tangxiaolv/telegramgallery/TL/c;
.source "DocumentAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static n:I = 0x3a556302


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->k(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/tangxiaolv/telegramgallery/TL/i;->f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/i;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->g:Lcom/tangxiaolv/telegramgallery/TL/i;

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 1

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/c$g;->n:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->x(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/c;->g:Lcom/tangxiaolv/telegramgallery/TL/i;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/TL/m;->e(Lcom/tangxiaolv/telegramgallery/TL/a;)V

    return-void
.end method
