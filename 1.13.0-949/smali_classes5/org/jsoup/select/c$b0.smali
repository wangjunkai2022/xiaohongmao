.class public Lorg/jsoup/select/c$b0;
.super Lorg/jsoup/select/c$o;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b0"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/c$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected b(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->C0()Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->Q0()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "nth-last-of-type"

    return-object v0
.end method
