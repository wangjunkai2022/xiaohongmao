.class public final Lcom/fasterxml/jackson/databind/ser/impl/c$d;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
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

.field public final b:Lcom/fasterxml/jackson/databind/ser/impl/c;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->a:Lcom/fasterxml/jackson/databind/g;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/c$d;->b:Lcom/fasterxml/jackson/databind/ser/impl/c;

    return-void
.end method
