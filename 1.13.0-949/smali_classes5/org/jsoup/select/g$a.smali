.class Lorg/jsoup/select/g$a;
.super Lorg/jsoup/select/g;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final b:Lorg/jsoup/select/a$b;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/select/g;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/select/g;->a:Lorg/jsoup/select/c;

    .line 3
    new-instance v0, Lorg/jsoup/select/a$b;

    invoke-direct {v0, p1}, Lorg/jsoup/select/a$b;-><init>(Lorg/jsoup/select/c;)V

    iput-object v0, p0, Lorg/jsoup/select/g$a;->b:Lorg/jsoup/select/a$b;

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)Z
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->o()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/k;->n(I)Lorg/jsoup/nodes/k;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lorg/jsoup/nodes/g;

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lorg/jsoup/select/g$a;->b:Lorg/jsoup/select/a$b;

    check-cast v1, Lorg/jsoup/nodes/g;

    invoke-virtual {v2, p2, v1}, Lorg/jsoup/select/a$b;->c(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jsoup/select/g;->a:Lorg/jsoup/select/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
