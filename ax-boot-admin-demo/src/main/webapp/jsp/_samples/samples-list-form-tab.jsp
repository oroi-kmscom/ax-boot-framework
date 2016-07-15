<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ax" uri="http://axisj.com/axu4j" %>

<ax:layout name="base.jsp">
    <ax:set name="title" value="${PAGE_NAME}"/>
    <ax:set name="page_desc" value="${PAGE_REMARK}"/>
    <ax:div name="css">

    </ax:div>
    <ax:div name="contents">
        <ax:row>
            <ax:col size="12">
                <ax:custom customid="page-button">

                </ax:custom>

                <div id="page-header">
                    <form id="page-search-view">
                        <div class="ax-sbar">
                            <span class="sitem">
                                <span class="slabel">텍스트</span>
                                <input type="text" id="searchParams" maxlength="10" title="검색어" class="AXInput W150" value=""/>
                            </span>
                            <span class="sitem">
                                <span class="slabel">콤보박스</span>
                                <select class="AXSelect" id="comboBox">
                                    <option value="">전체</option>
                                    <option value="A">A형</option>
                                    <option value="B">B형</option>
                                </select>
                            </span>
                        </div>
                    </form>
                </div>
                <div class="ax-button-group">
                    <div class="left">
                        <h2><i class="axi axi-list-alt"></i> 정보리스트</h2>
                    </div>
                    <div class="right">

                    </div>
                    <div class="ax-clear"></div>
                </div>
                <div class="ax-grid" id="page-grid-view0" style="min-height: 300px;"></div>

                <div class="ax-layout-split"></div>

                <div class="ax-button-group">
                    <div class="left">
                        <h2><i class="axi axi-table"></i> 정보등록</h2>
                    </div>
                    <div class="right">
                        <button type="button" class="AXButton" id="ax-form-btn-new"><i class="axi axi-plus-circle"></i> 신규</button>
                    </div>
                    <div class="ax-clear"></div>
                </div>

                <%-- %%%%%%%%%% 탭 %%%%%%%%%% --%>
                <div id="cx-tab-01"></div>

                <%-- %%%%%%%%%% 폼 (info) %%%%%%%%%% --%>
                <form id="model-form" name="model-form" class="ax-form" method="get" onsubmit="return false;">

                    <div class="ax-rwd-table" id="tab-content-01">
                        <ax:fields>
                            <ax:field label="코드" width="100px">
                                <input type="text" class="AXInput W90" data-ax-path="key" data-ax-validate="required" title="코드"/>
                            </ax:field>
                            <ax:field label="날짜" width="100px">
                                <input type="text" class="AXInput W90" data-ax-path="etc1" id="date-etc1" title="장소"/>
                            </ax:field>
                        </ax:fields>
                        <ax:fields>
                            <ax:field label="이름" width="200px">
                                <input type="text" class="AXInput W200" data-ax-path="value" data-ax-validate="required" title="이름"/>
                            </ax:field>
                        </ax:fields>
                        <ax:fields>
                            <ax:field label="컬럼1" width="100px">
                                <input type="text" class="AXInput W90" data-ax-path="etc2" title="컬럼1"/>
                            </ax:field>
                            <ax:field label="선택타입" width="100px">
                                <input type="text" class="AXInput W40" data-ax-path="etc3" readonly="readonly"/>
                                <input type="text" class="AXInput W90" data-ax-path="etc3label" id="selector-etc3"/>
                            </ax:field>
                        </ax:fields>
                    </div>

                    <div id="tab-content-02" style="display: none;">
                        <h3>종속된 리스트 &nbsp;&nbsp;
                            <button class="AXButton" id="ax-form-period-add">ADD</button>
                        </h3>

                        <table cellpadding="0" cellspacing="0" class="AXGridTable">
                            <colgroup>
                                <col width="60"/>
                                <col width="120"/>
                                <col/>
                            </colgroup>
                            <thead>
                            <tr>
                                <td></td>
                                <td>코드</td>
                                <td>이름</td>
                            </tr>
                            </thead>
                            <tbody data-ax-repeat="childList">
                            <script type="text/html">
                                <tr>
                                    <td align="center">
                                        <button class="AXButton" data-ax-repeat-click="remove">del</button>
                                        {{^@first}}
                                        {{/@first}}
                                    </td>
                                    <td>
                                        <input type="text" name="input-text" id="key-{{@i}}" placeholder="key-{{@i}}"
                                               data-ax-item-path="key" data-ax-validate="required" title="코드"
                                               class="AXInput W100"
                                               {{^@isNew}}
                                               readonly="readonly"
                                               {{/@isNew}}
                                        />
                                    </td>
                                    <td>
                                        <input type="text" name="input-text" id="value-{{@i}}" placeholder="value-{{@i}}" data-ax-item-path="value" data-ax-validate="required" title="이름"
                                               class="AXInput W100"/>
                                    </td>
                                </tr>
                            </script>
                            </tbody>
                        </table>
                    </div>
                </form>

            </ax:col>
        </ax:row>
    </ax:div>
    <ax:div name="scripts">
        <script type="text/javascript" src="js/sample-list-form-tab.js"></script>
    </ax:div>
</ax:layout>