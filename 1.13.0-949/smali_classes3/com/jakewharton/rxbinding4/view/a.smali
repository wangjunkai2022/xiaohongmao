.class public final Lcom/jakewharton/rxbinding4/view/a;
.super Lcom/jakewharton/rxbinding4/view/b;
.source "MenuItemActionViewEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\t\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u00d6\u0003R\u001a\u0010\u0004\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000e\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/view/a;",
        "Lcom/jakewharton/rxbinding4/view/b;",
        "Landroid/view/MenuItem;",
        "b",
        "menuItem",
        "c",
        "",
        "toString",
        "",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "a",
        "Landroid/view/MenuItem;",
        "()Landroid/view/MenuItem;",
        "<init>",
        "(Landroid/view/MenuItem;)V",
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
.field private final a:Landroid/view/MenuItem;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding4/view/b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/view/a;->a:Landroid/view/MenuItem;

    return-void
.end method

.method public static synthetic d(Lcom/jakewharton/rxbinding4/view/a;Landroid/view/MenuItem;ILjava/lang/Object;)Lcom/jakewharton/rxbinding4/view/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/a;->a()Landroid/view/MenuItem;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding4/view/a;->c(Landroid/view/MenuItem;)Lcom/jakewharton/rxbinding4/view/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/MenuItem;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/a;->a:Landroid/view/MenuItem;

    return-object v0
.end method

.method public final b()Landroid/view/MenuItem;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/a;->a()Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/view/MenuItem;)Lcom/jakewharton/rxbinding4/view/a;
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/view/a;

    invoke-direct {v0, p1}, Lcom/jakewharton/rxbinding4/view/a;-><init>(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/view/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/view/a;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/a;->a()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding4/view/a;->a()Landroid/view/MenuItem;

    move-result-object p1

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

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/a;->a()Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MenuItemActionViewCollapseEvent(menuItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/a;->a()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
