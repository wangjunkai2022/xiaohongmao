.class public final Lcom/fasterxml/jackson/databind/SerializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "SerializationConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<",
        "Lcom/fasterxml/jackson/databind/SerializationFeature;",
        "Lcom/fasterxml/jackson/databind/SerializationConfig;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final w:J = 0x1L

.field protected static final x:Lcom/fasterxml/jackson/core/i;

.field private static final y:I


# instance fields
.field protected final p:Lcom/fasterxml/jackson/databind/ser/f;

.field protected final q:Lcom/fasterxml/jackson/core/i;

.field protected final r:I

.field protected final s:I

.field protected final t:I

.field protected final u:I

.field protected final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->x:Lcom/fasterxml/jackson/core/i;

    .line 2
    const-class v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->y:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;J)V

    .line 27
    iput p4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 28
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 29
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 30
    iput p5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 31
    iput p6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 32
    iput p7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 33
    iput p8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/i;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 83
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 84
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 85
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 86
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 87
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 88
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 89
    iget p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 59
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 60
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 61
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 62
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 63
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 64
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 65
    iget p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    .line 35
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 36
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 37
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 38
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 39
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 40
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 41
    iget p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    .line 67
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 68
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 69
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 70
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 71
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 72
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 73
    iget p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V

    .line 75
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 76
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 77
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 78
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 79
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 80
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 81
    iget p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->g:Lcom/fasterxml/jackson/databind/jsontype/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/a;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/a;)V

    .line 19
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 20
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 21
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 22
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 23
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 24
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 25
    iget p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 10
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 11
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 12
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 13
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 14
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 15
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 16
    iget p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/f;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 43
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 44
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 45
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 46
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 47
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 48
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 49
    iget p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V

    .line 51
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 52
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 53
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 54
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 55
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 56
    iget p2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iput p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 57
    iget p1, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/a;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 2
    sget p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->y:I

    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    .line 4
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->x:Lcom/fasterxml/jackson/core/i;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 6
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 7
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 8
    iput p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    return-void
.end method

.method private varargs d([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 1
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 2
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 3
    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 4
    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    .line 5
    array-length v5, p1

    const/4 v6, 0x0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, p1, v1

    .line 6
    invoke-interface {v2}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v3

    or-int/2addr v8, v3

    or-int/2addr v9, v3

    .line 7
    instance-of v3, v2, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v2

    or-int/2addr v6, v2

    or-int/2addr v7, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    if-ne v0, v7, :cond_2

    move-object v10, p0

    goto :goto_1

    :cond_2
    new-instance v10, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    move-object v0, v10

    move-object v1, p0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v10
.end method

.method private varargs h([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 1
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 2
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 3
    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 4
    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    .line 5
    array-length v5, p1

    const/4 v6, 0x0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, p1, v1

    .line 6
    invoke-interface {v2}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v3

    not-int v4, v3

    and-int/2addr v8, v4

    or-int/2addr v9, v3

    .line 7
    instance-of v3, v2, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v2

    not-int v3, v2

    and-int/2addr v6, v3

    or-int/2addr v7, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    if-ne v0, v7, :cond_2

    move-object v10, p0

    goto :goto_1

    :cond_2
    new-instance v10, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    move-object v0, v10

    move-object v1, p0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v10
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->c(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic b(J)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->e(J)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method protected final c(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->b:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    :goto_0
    return-object v0
.end method

.method public constructDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    .line 2
    instance-of v1, v0, Lcom/fasterxml/jackson/core/util/d;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/fasterxml/jackson/core/util/d;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/d;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/i;

    :cond_0
    return-object v0
.end method

.method protected final e(J)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10

    new-instance v9, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    return-object v9
.end method

.method public getDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/i;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    return-object v0
.end method

.method public getFilterProvider()Lcom/fasterxml/jackson/databind/ser/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    return-object v0
.end method

.method public final getSerializationFeatures()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    return v0
.end method

.method public getSerializationInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    :cond_0
    return-object v0
.end method

.method public final hasSerializationFeatures(I)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public initialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->n0()Lcom/fasterxml/jackson/core/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->z0(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 5
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->enabledIn(I)Z

    move-result v0

    .line 6
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    .line 7
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    or-int/2addr v2, v0

    or-int/2addr v1, v0

    .line 9
    :cond_2
    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->t0(II)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 10
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    if-eqz v0, :cond_4

    .line 11
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->s0(II)Lcom/fasterxml/jackson/core/JsonGenerator;

    :cond_4
    return-void
.end method

.method public introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/b;
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/l;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/l;->forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;

    move-result-object p1

    return-object p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4
    iget p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 5
    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public useRootWrapping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->h:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 3
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    return v0
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 15
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int v7, v0, v1

    .line 16
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int v8, v0, p1

    .line 17
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    if-ne p1, v7, :cond_0

    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    if-ne p1, v8, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 18
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 19
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->d([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v1

    or-int v9, v0, v1

    .line 21
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result p1

    or-int v10, v0, p1

    .line 22
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    if-ne p1, v10, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10

    .line 9
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    or-int v5, v0, p1

    .line 10
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    if-ne v5, p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 11
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    .line 12
    array-length v0, p2

    const/4 v1, 0x0

    move v6, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object p1, p2, v1

    .line 13
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    or-int/2addr v6, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    if-ne v6, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->j:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/a;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->g:Lcom/fasterxml/jackson/databind/jsontype/a;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/a;)V

    :goto_0
    return-object v0
.end method

.method public with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    .line 6
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/a;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/a;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withDefaultPrettyPrinter(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->q:Lcom/fasterxml/jackson/core/i;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/i;)V

    :goto_0
    return-object v0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 13

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 6
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 7
    array-length v2, p1

    const/4 v3, 0x0

    move v9, v0

    move v10, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, p1, v3

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    or-int/2addr v9, v0

    or-int/2addr v10, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    if-ne p1, v10, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 13

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->d([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 13
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    .line 14
    array-length v3, p1

    move v11, v0

    move v12, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 15
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v0

    or-int/2addr v11, v0

    or-int/2addr v12, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    if-ne p1, v11, :cond_2

    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    if-ne p1, v12, :cond_2

    move-object p1, p0

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v7, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v0

    or-int/2addr v7, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    if-ne v7, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public withFilters(Lcom/fasterxml/jackson/databind/ser/f;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->p:Lcom/fasterxml/jackson/databind/ser/f;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/f;)V

    :goto_0
    return-object v0
.end method

.method public withPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->l:Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->setDefaultInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    return-object p0
.end method

.method public withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->h:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_1

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->h:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public bridge synthetic withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->i:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int v7, v0, v1

    .line 8
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result p1

    or-int v8, v0, p1

    .line 9
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    if-ne p1, v7, :cond_0

    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    if-ne p1, v8, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 10
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 11
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->h([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v1

    not-int v1, v1

    and-int v9, v0, v1

    .line 13
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result p1

    or-int v10, v0, p1

    .line 14
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    if-ne p1, v10, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int v5, v0, p1

    .line 2
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    if-ne v5, p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object p1
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    move v6, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object p1, p2, v1

    .line 5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result p1

    not-int p1, p1

    and-int/2addr v6, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    if-ne v6, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 13

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    .line 6
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    .line 7
    array-length v2, p1

    const/4 v3, 0x0

    move v9, v0

    move v10, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, p1, v3

    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    not-int v1, v0

    and-int/2addr v9, v1

    or-int/2addr v10, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    if-ne p1, v9, :cond_1

    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    if-ne p1, v10, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 13

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->h([Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    .line 13
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    .line 14
    array-length v3, p1

    move v11, v0

    move v12, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 15
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/b;->getMask()I

    move-result v0

    not-int v2, v0

    and-int/2addr v11, v2

    or-int/2addr v12, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    if-ne p1, v11, :cond_2

    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    if-ne p1, v12, :cond_2

    move-object p1, p0

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v7, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p1, v2

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v0

    not-int v0, v0

    and-int/2addr v7, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->r:I

    if-ne v7, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->a:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->s:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->t:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->u:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->v:I

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object p1
.end method
