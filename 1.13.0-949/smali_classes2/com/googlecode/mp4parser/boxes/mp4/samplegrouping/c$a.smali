.class public Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;
.super Ljava/lang/Object;
.source "RateShareEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:S


# direct methods
.method public constructor <init>(IS)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->a:I

    .line 3
    iput-short p2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->b:S

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->a:I

    return v0
.end method

.method public b()S
    .locals 1

    iget-short v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->b:S

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->a:I

    return-void
.end method

.method public d(S)V
    .locals 0

    iput-short p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->b:S

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;

    .line 3
    iget v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->a:I

    iget v3, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->a:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-short v2, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->b:S

    iget-short p1, p1, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->b:S

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->b:S

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{availableBitrate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetRateShare="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/c$a;->b:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method