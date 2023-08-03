.class public Lcom/googlecode/mp4parser/authoring/i;
.super Ljava/lang/Object;
.source "TrackMetaData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Lcom/googlecode/mp4parser/util/l;

.field private f:D

.field private g:D

.field private h:F

.field private i:J

.field private j:I

.field k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    .line 2
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->c:Ljava/util/Date;

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->d:Ljava/util/Date;

    .line 5
    sget-object v0, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->e:Lcom/googlecode/mp4parser/util/l;

    const-wide/16 v0, 0x1

    .line 6
    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->i:J

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/i;->j:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->d:Ljava/util/Date;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/i;->j:I

    return v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->g:D

    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/i;->k:I

    return v0
.end method

.method public f()Lcom/googlecode/mp4parser/util/l;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->e:Lcom/googlecode/mp4parser/util/l;

    return-object v0
.end method

.method public g()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/i;->c:Ljava/util/Date;

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->b:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->i:J

    return-wide v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/i;->h:F

    return v0
.end method

.method public k()D
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/i;->f:D

    return-wide v0
.end method

.method public l(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/i;->d:Ljava/util/Date;

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/i;->j:I

    return-void
.end method

.method public n(D)V
    .locals 0

    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/i;->g:D

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/i;->a:Ljava/lang/String;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/i;->k:I

    return-void
.end method

.method public q(Lcom/googlecode/mp4parser/util/l;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/i;->e:Lcom/googlecode/mp4parser/util/l;

    return-void
.end method

.method public r(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/i;->c:Ljava/util/Date;

    return-void
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/i;->b:J

    return-void
.end method

.method public t(J)V
    .locals 0

    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/i;->i:J

    return-void
.end method

.method public u(F)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/authoring/i;->h:F

    return-void
.end method

.method public v(D)V
    .locals 0

    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/i;->f:D

    return-void
.end method
