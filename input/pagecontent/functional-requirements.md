<style>
  {% include liquid-templates.css %}
</style>

<p>Functional requirements describe the capabilities the system must have in order to meet the end-users’ needs and achieve tasks within the business process.</p>

<br />

{% assign requirementsTypeFilter = "functional" %}
{% assign showRequirementsHeading = true %}
{% assign showRequirementsActors = true %}

{% include fragment-requirements.liquid %}