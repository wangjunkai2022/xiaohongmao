.class public final synthetic Lcom/fasterxml/jackson/databind/deser/std/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/fasterxml/jackson/databind/deser/std/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/d;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/d;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/d;->a:Lcom/fasterxml/jackson/databind/deser/std/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/b;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->a(Lcom/fasterxml/jackson/databind/introspect/b;)Z

    move-result p1

    return p1
.end method
