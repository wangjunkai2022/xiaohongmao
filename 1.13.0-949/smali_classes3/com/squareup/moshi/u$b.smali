.class Lcom/squareup/moshi/u$b;
.super Ljava/lang/Object;
.source "Moshi.java"

# interfaces
.implements Lcom/squareup/moshi/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/u;->k(Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/h$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/squareup/moshi/h;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/squareup/moshi/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/squareup/moshi/u$b;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/squareup/moshi/u$b;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/squareup/moshi/u$b;->c:Lcom/squareup/moshi/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;
    .locals 0
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
    iget-object p3, p0, Lcom/squareup/moshi/u$b;->a:Ljava/lang/reflect/Type;

    invoke-static {p3, p1}, Lcom/squareup/moshi/internal/c;->A(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/squareup/moshi/u$b;->b:Ljava/lang/Class;

    .line 3
    invoke-static {p2, p1}, Lcom/squareup/moshi/internal/c;->k(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/squareup/moshi/u$b;->c:Lcom/squareup/moshi/h;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
