.class public Lw3/f;
.super Ljava/lang/Object;
.source "ScalingList.java"


# instance fields
.field public a:[I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/googlecode/mp4parser/h264/read/b;I)Lw3/f;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lw3/f;

    invoke-direct {v0}, Lw3/f;-><init>()V

    .line 2
    new-array v1, p1, [I

    iput-object v1, v0, Lw3/f;->a:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    :goto_0
    if-lt v4, p1, :cond_0

    return-object v0

    :cond_0
    if-eqz v2, :cond_2

    const-string v2, "deltaScale"

    .line 3
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/h264/read/b;->t(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x100

    .line 4
    rem-int/lit16 v2, v2, 0x100

    if-nez v4, :cond_1

    if-nez v2, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 5
    :goto_1
    iput-boolean v5, v0, Lw3/f;->b:Z

    .line 6
    :cond_2
    iget-object v5, v0, Lw3/f;->a:[I

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    aput v3, v5, v4

    .line 7
    aget v3, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public b(Lx3/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lw3/f;->b:Z

    const-string v1, "SPS: "

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v2, v1}, Lx3/b;->i(ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 3
    :goto_0
    iget-object v3, p0, Lw3/f;->a:[I

    array-length v4, v3

    if-lt v2, v4, :cond_1

    return-void

    .line 4
    :cond_1
    aget v3, v3, v2

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, -0x100

    .line 5
    invoke-virtual {p1, v3, v1}, Lx3/b;->i(ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lw3/f;->a:[I

    aget v0, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScalingList{scalingList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lw3/f;->a:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useDefaultScalingMatrixFlag="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lw3/f;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
