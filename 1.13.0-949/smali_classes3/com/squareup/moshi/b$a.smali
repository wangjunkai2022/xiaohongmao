.class Lcom/squareup/moshi/b$a;
.super Ljava/lang/Object;
.source "ArrayJsonAdapter.java"

# interfaces
.implements Lcom/squareup/moshi/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/u;",
            ")",
            "Lcom/squareup/moshi/h<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/squareup/moshi/z;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/squareup/moshi/z;->j(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 4
    invoke-virtual {p3, p1}, Lcom/squareup/moshi/u;->d(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/h;

    move-result-object p1

    .line 5
    new-instance p3, Lcom/squareup/moshi/b;

    invoke-direct {p3, p2, p1}, Lcom/squareup/moshi/b;-><init>(Ljava/lang/Class;Lcom/squareup/moshi/h;)V

    invoke-virtual {p3}, Lcom/squareup/moshi/h;->nullSafe()Lcom/squareup/moshi/h;

    move-result-object p1

    return-object p1
.end method
