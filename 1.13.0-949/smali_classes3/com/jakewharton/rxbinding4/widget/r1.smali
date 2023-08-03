.class public final Lcom/jakewharton/rxbinding4/widget/r1;
.super Lcom/jakewharton/rxbinding4/widget/o1;
.source "SeekBarChangeEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003R\u001a\u0010\u0008\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0012\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\n\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/r1;",
        "Lcom/jakewharton/rxbinding4/widget/o1;",
        "Landroid/widget/SeekBar;",
        "b",
        "",
        "c",
        "",
        "d",
        "view",
        "progress",
        "fromUser",
        "e",
        "",
        "toString",
        "hashCode",
        "",
        "other",
        "equals",
        "a",
        "Landroid/widget/SeekBar;",
        "()Landroid/widget/SeekBar;",
        "I",
        "h",
        "()I",
        "Z",
        "g",
        "()Z",
        "<init>",
        "(Landroid/widget/SeekBar;IZ)V",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/SeekBar;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding4/widget/o1;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/r1;->a:Landroid/widget/SeekBar;

    iput p2, p0, Lcom/jakewharton/rxbinding4/widget/r1;->b:I

    iput-boolean p3, p0, Lcom/jakewharton/rxbinding4/widget/r1;->c:Z

    return-void
.end method

.method public static synthetic f(Lcom/jakewharton/rxbinding4/widget/r1;Landroid/widget/SeekBar;IZILjava/lang/Object;)Lcom/jakewharton/rxbinding4/widget/r1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/r1;->a()Landroid/widget/SeekBar;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/jakewharton/rxbinding4/widget/r1;->b:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/jakewharton/rxbinding4/widget/r1;->c:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/r1;->e(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding4/widget/r1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/widget/SeekBar;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/r1;->a:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public final b()Landroid/widget/SeekBar;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/r1;->a()Landroid/widget/SeekBar;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/r1;->b:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding4/widget/r1;->c:Z

    return v0
.end method

.method public final e(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding4/widget/r1;
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/r1;

    invoke-direct {v0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/r1;-><init>(Landroid/widget/SeekBar;IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/widget/r1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/widget/r1;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/r1;->a()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding4/widget/r1;->a()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/r1;->b:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/r1;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding4/widget/r1;->c:Z

    iget-boolean p1, p1, Lcom/jakewharton/rxbinding4/widget/r1;->c:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding4/widget/r1;->c:Z

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/r1;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/r1;->a()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/r1;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding4/widget/r1;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBarProgressChangeEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/r1;->a()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/r1;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding4/widget/r1;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
