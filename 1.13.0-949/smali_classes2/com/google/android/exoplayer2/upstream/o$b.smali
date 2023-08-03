.class public final Lcom/google/android/exoplayer2/upstream/o$b;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:J

.field private c:I

.field private d:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->c:I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->e:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->g:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/o;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->a:Landroid/net/Uri;

    .line 8
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/o;->b:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->b:J

    .line 9
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/o;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->c:I

    .line 10
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->d:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->d:[B

    .line 11
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->e:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->e:Ljava/util/Map;

    .line 12
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/o;->g:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->f:J

    .line 13
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/o;->h:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->g:J

    .line 14
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->h:Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/o;->j:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o$b;->i:I

    .line 16
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/o;->k:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->j:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/o$b;-><init>(Lcom/google/android/exoplayer2/upstream/o;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/o;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/o$b;->a:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/a;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/upstream/o;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/o$b;->a:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/o$b;->b:J

    iget v7, v0, Lcom/google/android/exoplayer2/upstream/o$b;->c:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/upstream/o$b;->d:[B

    iget-object v9, v0, Lcom/google/android/exoplayer2/upstream/o$b;->e:Ljava/util/Map;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/upstream/o$b;->f:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/o$b;->g:J

    iget-object v14, v0, Lcom/google/android/exoplayer2/upstream/o$b;->h:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/exoplayer2/upstream/o$b;->i:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/o$b;->j:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/upstream/o;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/upstream/o$a;)V

    return-object v1
.end method

.method public b(Ljava/lang/Object;)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public c(I)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->i:I

    return-object p0
.end method

.method public d([B)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->d:[B

    return-object p0
.end method

.method public e(I)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->c:I

    return-object p0
.end method

.method public f(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/upstream/o$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->e:Ljava/util/Map;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public h(J)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->g:J

    return-object p0
.end method

.method public i(J)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->f:J

    return-object p0
.end method

.method public j(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public l(J)Lcom/google/android/exoplayer2/upstream/o$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/o$b;->b:J

    return-object p0
.end method
