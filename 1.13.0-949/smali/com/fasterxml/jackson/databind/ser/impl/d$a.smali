.class final Lcom/fasterxml/jackson/databind/ser/impl/d$a;
.super Ljava/lang/Object;
.source "ReadOnlyClassToSerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/fasterxml/jackson/databind/ser/impl/d$a;

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final d:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final e:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/d$a;Lcom/fasterxml/jackson/databind/util/v;Lcom/fasterxml/jackson/databind/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/d$a;",
            "Lcom/fasterxml/jackson/databind/util/v;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->b:Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    .line 3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/g;

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/v;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->e:Z

    .line 5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/v;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->c:Ljava/lang/Class;

    .line 6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/v;->b()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->d:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->d:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->c:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->d:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->c:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->e:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
