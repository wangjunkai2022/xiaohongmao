.class public Lcom/coremedia/iso/boxes/fragment/m$a;
.super Ljava/lang/Object;
.source "TrackFragmentRandomAccessBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/fragment/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p3, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->b:J

    .line 4
    iput-wide p9, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->e:J

    .line 5
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->a:J

    .line 6
    iput-wide p5, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->c:J

    .line 7
    iput-wide p7, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->d:J

    return-void
.end method

.method static synthetic a(Lcom/coremedia/iso/boxes/fragment/m$a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->a:J

    return-void
.end method

.method static synthetic b(Lcom/coremedia/iso/boxes/fragment/m$a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->b:J

    return-void
.end method

.method static synthetic c(Lcom/coremedia/iso/boxes/fragment/m$a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->c:J

    return-void
.end method

.method static synthetic d(Lcom/coremedia/iso/boxes/fragment/m$a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->d:J

    return-void
.end method

.method static synthetic e(Lcom/coremedia/iso/boxes/fragment/m$a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->e:J

    return-void
.end method

.method static synthetic f(Lcom/coremedia/iso/boxes/fragment/m$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->a:J

    return-wide v0
.end method

.method static synthetic g(Lcom/coremedia/iso/boxes/fragment/m$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->b:J

    return-wide v0
.end method

.method static synthetic h(Lcom/coremedia/iso/boxes/fragment/m$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->c:J

    return-wide v0
.end method

.method static synthetic i(Lcom/coremedia/iso/boxes/fragment/m$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->d:J

    return-wide v0
.end method

.method static synthetic j(Lcom/coremedia/iso/boxes/fragment/m$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->e:J

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/coremedia/iso/boxes/fragment/m$a;

    .line 3
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->b:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/m$a;->b:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->e:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/m$a;->e:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->a:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/m$a;->a:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 6
    :cond_4
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->c:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/m$a;->c:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    .line 7
    :cond_5
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->d:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/m$a;->d:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->b:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->c:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->d:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->e:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->b:J

    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->e:J

    return-wide v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->a:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->c:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->d:J

    return-wide v0
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->b:J

    return-void
.end method

.method public q(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->e:J

    return-void
.end method

.method public r(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->a:J

    return-void
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->c:J

    return-void
.end method

.method public t(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->d:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry{time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", moofOffset="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", trafNumber="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", trunNumber="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sampleNumber="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/m$a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
