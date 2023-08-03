.class public Lcom/fasterxml/jackson/databind/introspect/s$h;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/fasterxml/jackson/databind/introspect/s$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/s$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/s$g<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/s$h;->a:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$h;->a:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 3
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/s$g;->b:Lcom/fasterxml/jackson/databind/introspect/s$g;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$h;->a:Lcom/fasterxml/jackson/databind/introspect/s$g;

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/s$h;->a:Lcom/fasterxml/jackson/databind/introspect/s$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/s$h;->a()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
