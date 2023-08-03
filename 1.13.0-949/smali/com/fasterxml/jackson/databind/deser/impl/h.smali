.class public abstract Lcom/fasterxml/jackson/databind/deser/impl/h;
.super Ljava/lang/Object;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/h$b;,
        Lcom/fasterxml/jackson/databind/deser/impl/h$a;,
        Lcom/fasterxml/jackson/databind/deser/impl/h$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/deser/impl/h;

.field public final b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/h;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->a:Lcom/fasterxml/jackson/databind/deser/impl/h;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
