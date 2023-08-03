.class Lorg/jsoup/nodes/b$b;
.super Ljava/util/AbstractMap;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/b$b$b;,
        Lorg/jsoup/nodes/b$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lorg/jsoup/nodes/b;


# direct methods
.method private constructor <init>(Lorg/jsoup/nodes/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/jsoup/nodes/b$b;->a:Lorg/jsoup/nodes/b;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/nodes/b;Lorg/jsoup/nodes/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b$b;-><init>(Lorg/jsoup/nodes/b;)V

    return-void
.end method

.method static synthetic a(Lorg/jsoup/nodes/b$b;)Lorg/jsoup/nodes/b;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/nodes/b$b;->a:Lorg/jsoup/nodes/b;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/nodes/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/jsoup/nodes/b$b;->a:Lorg/jsoup/nodes/b;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/b$b;->a:Lorg/jsoup/nodes/b;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lorg/jsoup/nodes/b$b;->a:Lorg/jsoup/nodes/b;

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/nodes/b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/nodes/b$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/b$b$b;-><init>(Lorg/jsoup/nodes/b$b;Lorg/jsoup/nodes/b$a;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/b$b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
