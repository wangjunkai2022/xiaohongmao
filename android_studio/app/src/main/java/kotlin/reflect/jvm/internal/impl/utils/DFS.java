package kotlin.reflect.jvm.internal.impl.utils;

import io.sentry.protocol.t;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import m8.g;

/* loaded from: classes4.dex */
public class DFS {

    /* loaded from: classes4.dex */
    public static abstract class AbstractNodeHandler<N, R> implements NodeHandler<N, R> {
        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
        public void afterChildren(N n9) {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
        public boolean beforeChildren(N n9) {
            return true;
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class CollectingNodeHandler<N, R, C extends Iterable<R>> extends AbstractNodeHandler<N, C> {
        @g
        protected final C result;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            String str = i4 != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i4 != 1 ? 3 : 2];
            if (i4 != 1) {
                objArr[0] = "result";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/DFS$CollectingNodeHandler";
            }
            if (i4 != 1) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS$CollectingNodeHandler";
            } else {
                objArr[1] = "result";
            }
            if (i4 != 1) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i4 == 1) {
                throw new IllegalStateException(format);
            }
        }

        protected CollectingNodeHandler(@g C c10) {
            if (c10 == null) {
                $$$reportNull$$$0(0);
            }
            this.result = c10;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
        @g
        public C result() {
            C c10 = this.result;
            if (c10 == null) {
                $$$reportNull$$$0(1);
            }
            return c10;
        }
    }

    /* loaded from: classes4.dex */
    public interface Neighbors<N> {
        @g
        Iterable<? extends N> getNeighbors(N n9);
    }

    /* loaded from: classes4.dex */
    public interface NodeHandler<N, R> {
        void afterChildren(N n9);

        boolean beforeChildren(N n9);

        R result();
    }

    /* loaded from: classes4.dex */
    public static abstract class NodeHandlerWithListResult<N, R> extends CollectingNodeHandler<N, R, LinkedList<R>> {
        /* JADX INFO: Access modifiers changed from: protected */
        public NodeHandlerWithListResult() {
            super(new LinkedList());
        }
    }

    /* loaded from: classes4.dex */
    public interface Visited<N> {
        boolean checkAndMarkVisited(N n9);
    }

    /* loaded from: classes4.dex */
    public static class VisitedWithSet<N> implements Visited<N> {
        private final Set<N> visited;

        private static /* synthetic */ void $$$reportNull$$$0(int i4) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "visited", "kotlin/reflect/jvm/internal/impl/utils/DFS$VisitedWithSet", "<init>"));
        }

        public VisitedWithSet() {
            this(new HashSet());
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.Visited
        public boolean checkAndMarkVisited(N n9) {
            return this.visited.add(n9);
        }

        public VisitedWithSet(@g Set<N> set) {
            if (set == null) {
                $$$reportNull$$$0(0);
            }
            this.visited = set;
        }
    }

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        Object[] objArr = new Object[3];
        switch (i4) {
            case 1:
            case 5:
            case 8:
            case 11:
            case 15:
            case 18:
            case 21:
            case 23:
                objArr[0] = "neighbors";
                break;
            case 2:
            case 12:
            case 16:
            case 19:
            case 24:
                objArr[0] = "visited";
                break;
            case 3:
            case 6:
            case 13:
            case 25:
                objArr[0] = "handler";
                break;
            case 4:
            case 7:
            case 17:
            case 20:
            default:
                objArr[0] = "nodes";
                break;
            case 9:
                objArr[0] = "predicate";
                break;
            case 10:
            case 14:
                objArr[0] = "node";
                break;
            case 22:
                objArr[0] = t.b.f83861f;
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/DFS";
        switch (i4) {
            case 7:
            case 8:
            case 9:
                objArr[2] = "ifAny";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "dfsFromNode";
                break;
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
                objArr[2] = "topologicalOrder";
                break;
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "doDfs";
                break;
            default:
                objArr[2] = "dfs";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static <N, R> R dfs(@g Collection<N> collection, @g Neighbors<N> neighbors, @g Visited<N> visited, @g NodeHandler<N, R> nodeHandler) {
        if (collection == null) {
            $$$reportNull$$$0(0);
        }
        if (neighbors == null) {
            $$$reportNull$$$0(1);
        }
        if (visited == null) {
            $$$reportNull$$$0(2);
        }
        if (nodeHandler == null) {
            $$$reportNull$$$0(3);
        }
        for (N n9 : collection) {
            doDfs(n9, neighbors, visited, nodeHandler);
        }
        return nodeHandler.result();
    }

    public static <N> void doDfs(@g N n9, @g Neighbors<N> neighbors, @g Visited<N> visited, @g NodeHandler<N, ?> nodeHandler) {
        if (n9 == null) {
            $$$reportNull$$$0(22);
        }
        if (neighbors == null) {
            $$$reportNull$$$0(23);
        }
        if (visited == null) {
            $$$reportNull$$$0(24);
        }
        if (nodeHandler == null) {
            $$$reportNull$$$0(25);
        }
        if (visited.checkAndMarkVisited(n9) && nodeHandler.beforeChildren(n9)) {
            for (N n10 : neighbors.getNeighbors(n9)) {
                doDfs(n10, neighbors, visited, nodeHandler);
            }
            nodeHandler.afterChildren(n9);
        }
    }

    public static <N> Boolean ifAny(@g Collection<N> collection, @g Neighbors<N> neighbors, @g final Function1<N, Boolean> function1) {
        if (collection == null) {
            $$$reportNull$$$0(7);
        }
        if (neighbors == null) {
            $$$reportNull$$$0(8);
        }
        if (function1 == null) {
            $$$reportNull$$$0(9);
        }
        final boolean[] zArr = new boolean[1];
        return (Boolean) dfs(collection, neighbors, new AbstractNodeHandler<N, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.utils.DFS.1
            @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.AbstractNodeHandler, kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
            public boolean beforeChildren(N n9) {
                if (((Boolean) Function1.this.invoke(n9)).booleanValue()) {
                    zArr[0] = true;
                }
                return !zArr[0];
            }

            @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.NodeHandler
            public Boolean result() {
                return Boolean.valueOf(zArr[0]);
            }
        });
    }

    public static <N, R> R dfs(@g Collection<N> collection, @g Neighbors<N> neighbors, @g NodeHandler<N, R> nodeHandler) {
        if (collection == null) {
            $$$reportNull$$$0(4);
        }
        if (neighbors == null) {
            $$$reportNull$$$0(5);
        }
        if (nodeHandler == null) {
            $$$reportNull$$$0(6);
        }
        return (R) dfs(collection, neighbors, new VisitedWithSet(), nodeHandler);
    }
}
