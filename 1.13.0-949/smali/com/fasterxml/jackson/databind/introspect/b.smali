.class public Lcom/fasterxml/jackson/databind/introspect/b;
.super Ljava/lang/Object;
.source "AnnotatedAndMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/fasterxml/jackson/databind/introspect/a;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/introspect/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TM;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/b;->a:Lcom/fasterxml/jackson/databind/introspect/a;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/fasterxml/jackson/databind/introspect/a;",
            "M:",
            "Ljava/lang/Object;",
            ">(TA;TM;)",
            "Lcom/fasterxml/jackson/databind/introspect/b<",
            "TA;TM;>;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/b;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/b;-><init>(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)V

    return-object v0
.end method
