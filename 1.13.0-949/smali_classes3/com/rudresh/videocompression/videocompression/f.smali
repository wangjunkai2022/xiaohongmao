.class public Lcom/rudresh/videocompression/videocompression/f;
.super Ljava/lang/Object;
.source "Mp4Movie.java"


# instance fields
.field private a:Lcom/googlecode/mp4parser/util/l;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rudresh/videocompression/videocompression/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/File;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->a:Lcom/googlecode/mp4parser/util/l;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(IJLandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rudresh/videocompression/videocompression/k;

    .line 3
    invoke-virtual {p1, p2, p3, p4}, Lcom/rudresh/videocompression/videocompression/k;->b(JLandroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/media/MediaFormat;Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rudresh/videocompression/videocompression/k;

    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Lcom/rudresh/videocompression/videocompression/k;-><init>(ILandroid/media/MediaFormat;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/f;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->c:Ljava/io/File;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/rudresh/videocompression/videocompression/f;->e:I

    return v0
.end method

.method public e(I)J
    .locals 2

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rudresh/videocompression/videocompression/k;

    .line 3
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->g()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()Lcom/googlecode/mp4parser/util/l;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->a:Lcom/googlecode/mp4parser/util/l;

    return-object v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/rudresh/videocompression/videocompression/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/f;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/rudresh/videocompression/videocompression/f;->d:I

    return v0
.end method

.method public i(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/f;->c:Ljava/io/File;

    return-void
.end method

.method public j(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/f;->a:Lcom/googlecode/mp4parser/util/l;

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lcom/googlecode/mp4parser/util/l;->k:Lcom/googlecode/mp4parser/util/l;

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/f;->a:Lcom/googlecode/mp4parser/util/l;

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    .line 3
    sget-object p1, Lcom/googlecode/mp4parser/util/l;->l:Lcom/googlecode/mp4parser/util/l;

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/f;->a:Lcom/googlecode/mp4parser/util/l;

    goto :goto_0

    :cond_2
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    .line 4
    sget-object p1, Lcom/googlecode/mp4parser/util/l;->m:Lcom/googlecode/mp4parser/util/l;

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/f;->a:Lcom/googlecode/mp4parser/util/l;

    :cond_3
    :goto_0
    return-void
.end method

.method public k(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rudresh/videocompression/videocompression/f;->d:I

    .line 2
    iput p2, p0, Lcom/rudresh/videocompression/videocompression/f;->e:I

    return-void
.end method
