.class final Lcom/fasterxml/jackson/databind/ser/impl/c$c;
.super Lcom/fasterxml/jackson/databind/ser/impl/c;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final c:I = 0x8


# instance fields
.field private final b:[Lcom/fasterxml/jackson/databind/ser/impl/c$f;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/c;[Lcom/fasterxml/jackson/databind/ser/impl/c$f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    .line 2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$c;->b:[Lcom/fasterxml/jackson/databind/ser/impl/c$f;

    return-void
.end method


# virtual methods
.method public l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$c;->b:[Lcom/fasterxml/jackson/databind/ser/impl/c$f;

    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/c;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/c$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c$e;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/c;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    return-object v0

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ser/impl/c$f;

    .line 5
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/c$f;

    invoke-direct {v2, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c$f;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)V

    aput-object v2, v0, v1

    .line 6
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/impl/c$c;

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/databind/ser/impl/c$c;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/c;[Lcom/fasterxml/jackson/databind/ser/impl/c$f;)V

    return-object p1
.end method

.method public m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$c;->b:[Lcom/fasterxml/jackson/databind/ser/impl/c$f;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 2
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_0

    iget-object p1, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->b:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 3
    aget-object v1, v0, v1

    .line 4
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_1

    iget-object p1, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->b:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_1
    const/4 v1, 0x2

    .line 5
    aget-object v1, v0, v1

    .line 6
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_2

    iget-object p1, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->b:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    .line 7
    :cond_2
    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    .line 8
    aget-object v1, v0, v1

    .line 9
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_3

    iget-object p1, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->b:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_3
    :pswitch_1
    const/4 v1, 0x6

    .line 10
    aget-object v1, v0, v1

    .line 11
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_4

    iget-object p1, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->b:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_4
    :pswitch_2
    const/4 v1, 0x5

    .line 12
    aget-object v1, v0, v1

    .line 13
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_5

    iget-object p1, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->b:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_5
    :pswitch_3
    const/4 v1, 0x4

    .line 14
    aget-object v1, v0, v1

    .line 15
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->a:Ljava/lang/Class;

    if-ne v2, p1, :cond_6

    iget-object p1, v1, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->b:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_6
    :pswitch_4
    const/4 v1, 0x3

    .line 16
    aget-object v0, v0, v1

    .line 17
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->a:Ljava/lang/Class;

    if-ne v1, p1, :cond_7

    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/c$f;->b:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
