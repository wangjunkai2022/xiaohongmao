.class final Lcom/google/thirdparty/publicsuffix/b;
.super Ljava/lang/Object;
.source "TrieParser.java"


# annotations
.annotation build Lh3/b;
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/u;->p(Ljava/lang/String;)Lcom/google/common/base/u;

    move-result-object v0

    sput-object v0, Lcom/google/thirdparty/publicsuffix/b;->a:Lcom/google/common/base/u;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/CharSequence;ILcom/google/common/collect/ImmutableMap$b;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lcom/google/common/collect/ImmutableMap$b<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x3a

    const/16 v5, 0x21

    const/16 v6, 0x2c

    const/16 v7, 0x3f

    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v8, 0x26

    if-eq v3, v8, :cond_1

    if-eq v3, v7, :cond_1

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_1

    if-ne v3, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcom/google/thirdparty/publicsuffix/b;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {p0, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eq v3, v5, :cond_2

    if-eq v3, v7, :cond_2

    if-eq v3, v4, :cond_2

    if-ne v3, v6, :cond_3

    .line 4
    :cond_2
    sget-object v4, Lcom/google/thirdparty/publicsuffix/b;->a:Lcom/google/common/base/u;

    invoke-virtual {v4, p0}, Lcom/google/common/base/u;->k(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 6
    invoke-static {v3}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->a(C)Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_6

    :cond_4
    if-ge v2, v0, :cond_6

    .line 7
    invoke-static {p0, p1, v2, p3}, Lcom/google/thirdparty/publicsuffix/b;->a(Ljava/util/List;Ljava/lang/CharSequence;ILcom/google/common/collect/ImmutableMap$b;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 9
    :cond_6
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sub-int/2addr v2, p2

    return v2
.end method

.method static b(Ljava/lang/CharSequence;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/b3;->y()Ljava/util/LinkedList;

    move-result-object v3

    invoke-static {v3, p0, v2, v0}, Lcom/google/thirdparty/publicsuffix/b;->a(Ljava/util/List;Ljava/lang/CharSequence;ILcom/google/common/collect/ImmutableMap$b;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method
