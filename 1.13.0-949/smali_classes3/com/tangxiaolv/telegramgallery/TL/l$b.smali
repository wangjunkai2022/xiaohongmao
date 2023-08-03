.class public Lcom/tangxiaolv/telegramgallery/TL/l$b;
.super Lcom/tangxiaolv/telegramgallery/TL/l;
.source "PhotoSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static j:I = 0x77bfb61b


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/l;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->k(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/tangxiaolv/telegramgallery/TL/d;->f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 3
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->e:I

    .line 4
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->f:I

    .line 5
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->g:I

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 1

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/l$b;->j:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->x(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/TL/m;->e(Lcom/tangxiaolv/telegramgallery/TL/a;)V

    .line 4
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->e:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 5
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->f:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 6
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/l;->g:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    return-void
.end method
