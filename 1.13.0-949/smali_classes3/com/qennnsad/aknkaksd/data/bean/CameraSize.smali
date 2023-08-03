.class public Lcom/qennnsad/aknkaksd/data/bean/CameraSize;
.super Ljava/lang/Object;
.source "CameraSize.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->width:I

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;

    .line 3
    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->width:I

    iget v2, p1, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->width:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->height:I

    iget p1, p1, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->height:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraSize{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/CameraSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
