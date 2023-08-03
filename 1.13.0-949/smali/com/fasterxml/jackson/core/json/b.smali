.class public Lcom/fasterxml/jackson/core/json/b;
.super Ljava/lang/Object;
.source "DupDetector.java"


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static f(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/json/b;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/json/b;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/json/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static g(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/json/b;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/core/json/b;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/json/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/core/json/b;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/json/b;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/b;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/json/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->t0()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/b;->b:Ljava/lang/String;

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/b;->c:Ljava/lang/String;

    return v1

    .line 6
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->d:Ljava/util/HashSet;

    if-nez v0, :cond_4

    .line 8
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->d:Ljava/util/HashSet;

    .line 9
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->d:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->b:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/b;->d:Ljava/util/HashSet;

    return-void
.end method
