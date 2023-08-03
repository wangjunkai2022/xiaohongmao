.class Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$f;
.super Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;
.source "BasicPolymorphicTypeValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->j(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$f;->b:Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$f;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$f;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
