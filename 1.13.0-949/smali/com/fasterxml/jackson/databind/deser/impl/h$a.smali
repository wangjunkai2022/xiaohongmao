.class final Lcom/fasterxml/jackson/databind/deser/impl/h$a;
.super Lcom/fasterxml/jackson/databind/deser/impl/h;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final c:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/h;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/h;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/h;Ljava/lang/Object;)V

    .line 2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/h$a;->c:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 3
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/h$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/h$a;->c:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/h$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
