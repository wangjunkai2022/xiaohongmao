.class public Lcom/tangxiaolv/telegramgallery/TL/b$d;
.super Lcom/tangxiaolv/telegramgallery/TL/b$a;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static q:I = 0x55555556


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->j(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    .line 2
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->j(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->d:J

    .line 3
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->e:I

    .line 4
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->f:I

    .line 5
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->k(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->k(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->i:I

    .line 8
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/tangxiaolv/telegramgallery/TL/l;->f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/l;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->j:Lcom/tangxiaolv/telegramgallery/TL/l;

    .line 9
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    .line 10
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->d(Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->l:[B

    .line 11
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->d(Z)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->m:[B

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 2

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/b$d;->q:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->w(J)V

    .line 3
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->w(J)V

    .line 4
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->e:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 5
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->f:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->x(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->x(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->i:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 9
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->j:Lcom/tangxiaolv/telegramgallery/TL/l;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/TL/m;->e(Lcom/tangxiaolv/telegramgallery/TL/a;)V

    .line 10
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->l:[B

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->p([B)V

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->m:[B

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->p([B)V

    return-void
.end method
