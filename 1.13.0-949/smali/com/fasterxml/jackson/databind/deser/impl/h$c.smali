.class final Lcom/fasterxml/jackson/databind/deser/impl/h$c;
.super Lcom/fasterxml/jackson/databind/deser/impl/h;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final c:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/h;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/h;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/h;Ljava/lang/Object;)V

    .line 2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/h$c;->c:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/h$c;->c:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
