.class public final Lcom/giphy/sdk/ui/h;
.super Ljava/lang/Object;
.source "GPHSuggestions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\t\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u000b\u001a\u00020\nH\u00d6\u0001J\u0013\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/h;",
        "",
        "Lcom/giphy/sdk/ui/GPHSearchSuggestionType;",
        "a",
        "",
        "b",
        "type",
        "term",
        "c",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Lcom/giphy/sdk/ui/GPHSearchSuggestionType;",
        "f",
        "()Lcom/giphy/sdk/ui/GPHSearchSuggestionType;",
        "h",
        "(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;)V",
        "Ljava/lang/String;",
        "e",
        "()Ljava/lang/String;",
        "g",
        "(Ljava/lang/String;)V",
        "<init>",
        "(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/GPHSearchSuggestionType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "term"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/ui/h;->a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    iput-object p2, p0, Lcom/giphy/sdk/ui/h;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lcom/giphy/sdk/ui/h;Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;ILjava/lang/Object;)Lcom/giphy/sdk/ui/h;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/giphy/sdk/ui/h;->a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/giphy/sdk/ui/h;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/h;->c(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)Lcom/giphy/sdk/ui/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/giphy/sdk/ui/GPHSearchSuggestionType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/h;->a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)Lcom/giphy/sdk/ui/h;
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/GPHSearchSuggestionType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "term"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/giphy/sdk/ui/h;

    invoke-direct {v0, p1, p2}, Lcom/giphy/sdk/ui/h;-><init>(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/giphy/sdk/ui/h;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/giphy/sdk/ui/h;

    iget-object v0, p0, Lcom/giphy/sdk/ui/h;->a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    iget-object v1, p1, Lcom/giphy/sdk/ui/h;->a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/h;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/giphy/sdk/ui/h;->b:Ljava/lang/String;

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

.method public final f()Lcom/giphy/sdk/ui/GPHSearchSuggestionType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/h;->a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/h;->b:Ljava/lang/String;

    return-void
.end method

.method public final h(Lcom/giphy/sdk/ui/GPHSearchSuggestionType;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/GPHSearchSuggestionType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/h;->a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/giphy/sdk/ui/h;->a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/giphy/sdk/ui/h;->b:Ljava/lang/String;

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

    const-string v1, "GPHSuggestion(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/h;->a:Lcom/giphy/sdk/ui/GPHSearchSuggestionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", term="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
