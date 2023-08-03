.class public final Lcom/jakewharton/rxbinding4/widget/y1;
.super Ljava/lang/Object;
.source "TextViewEditorActionEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J)\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/y1;",
        "",
        "Landroid/widget/TextView;",
        "a",
        "",
        "b",
        "Landroid/view/KeyEvent;",
        "c",
        "view",
        "actionId",
        "keyEvent",
        "d",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "Landroid/widget/TextView;",
        "h",
        "()Landroid/widget/TextView;",
        "I",
        "f",
        "()I",
        "Landroid/view/KeyEvent;",
        "g",
        "()Landroid/view/KeyEvent;",
        "<init>",
        "(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V",
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
.field private final a:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I

.field private final c:Landroid/view/KeyEvent;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/view/KeyEvent;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/y1;->a:Landroid/widget/TextView;

    iput p2, p0, Lcom/jakewharton/rxbinding4/widget/y1;->b:I

    iput-object p3, p0, Lcom/jakewharton/rxbinding4/widget/y1;->c:Landroid/view/KeyEvent;

    return-void
.end method

.method public static synthetic e(Lcom/jakewharton/rxbinding4/widget/y1;Landroid/widget/TextView;ILandroid/view/KeyEvent;ILjava/lang/Object;)Lcom/jakewharton/rxbinding4/widget/y1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/jakewharton/rxbinding4/widget/y1;->a:Landroid/widget/TextView;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/jakewharton/rxbinding4/widget/y1;->b:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/jakewharton/rxbinding4/widget/y1;->c:Landroid/view/KeyEvent;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/y1;->d(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Lcom/jakewharton/rxbinding4/widget/y1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->b:I

    return v0
.end method

.method public final c()Landroid/view/KeyEvent;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->c:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public final d(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Lcom/jakewharton/rxbinding4/widget/y1;
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/view/KeyEvent;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/y1;

    invoke-direct {v0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/y1;-><init>(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/widget/y1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/widget/y1;

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/widget/y1;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->b:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/y1;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->c:Landroid/view/KeyEvent;

    iget-object p1, p1, Lcom/jakewharton/rxbinding4/widget/y1;->c:Landroid/view/KeyEvent;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->b:I

    return v0
.end method

.method public final g()Landroid/view/KeyEvent;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->c:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public final h()Landroid/widget/TextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/y1;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jakewharton/rxbinding4/widget/y1;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/jakewharton/rxbinding4/widget/y1;->c:Landroid/view/KeyEvent;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

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

    const-string v1, "TextViewEditorActionEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/y1;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/y1;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/y1;->c:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
