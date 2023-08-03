.class public Lcom/tangxiaolv/telegramgallery/TL/b$c;
.super Lcom/tangxiaolv/telegramgallery/TL/b;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static p:I = 0x55555558


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/b;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/tangxiaolv/telegramgallery/TL/a;Z)V
    .locals 4

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

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->f:I

    .line 4
    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/TL/a;->a()I

    move-result v0

    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->k(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const-string v2, "audio/ogg"

    .line 6
    iput-object v2, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->h:Ljava/lang/String;

    .line 7
    instance-of v2, p1, Lcom/tangxiaolv/telegramgallery/TL/j;

    if-eqz v2, :cond_0

    .line 8
    move-object v2, p1

    check-cast v2, Lcom/tangxiaolv/telegramgallery/TL/j;

    invoke-virtual {v2, v0}, Lcom/tangxiaolv/telegramgallery/TL/j;->F(I)V

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->i:I

    .line 10
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/tangxiaolv/telegramgallery/TL/l;->f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/l;

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->j:Lcom/tangxiaolv/telegramgallery/TL/l;

    .line 11
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    .line 12
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    const v2, 0x1cb5c415

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-nez p2, :cond_1

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    const-string v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 15
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->i(Z)I

    move-result v1

    .line 16
    invoke-static {p1, v1, p2}, Lcom/tangxiaolv/telegramgallery/TL/c;->f(Lcom/tangxiaolv/telegramgallery/TL/a;IZ)Lcom/tangxiaolv/telegramgallery/TL/c;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->d(Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->l:[B

    .line 19
    invoke-virtual {p1, p2}, Lcom/tangxiaolv/telegramgallery/TL/a;->d(Z)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->m:[B

    return-void
.end method

.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 3

    .line 1
    sget v0, Lcom/tangxiaolv/telegramgallery/TL/b$c;->p:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 2
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->w(J)V

    .line 3
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/TL/a;->w(J)V

    .line 4
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->f:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->x(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->i:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->j:Lcom/tangxiaolv/telegramgallery/TL/l;

    invoke-virtual {v0, p1}, Lcom/tangxiaolv/telegramgallery/TL/m;->e(Lcom/tangxiaolv/telegramgallery/TL/a;)V

    .line 8
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->k:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    const v0, 0x1cb5c415

    .line 9
    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    .line 10
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tangxiaolv/telegramgallery/TL/c;

    invoke-virtual {v2, p1}, Lcom/tangxiaolv/telegramgallery/TL/m;->e(Lcom/tangxiaolv/telegramgallery/TL/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->l:[B

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->p([B)V

    .line 14
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/TL/b;->m:[B

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->p([B)V

    return-void
.end method
